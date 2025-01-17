local M = {}

function M.setup()
  local on_attach = function(client, bufnr)
    -- require'jdtls'.setup_dap({hotcodereplace = 'auto'})
    require'jdtls'.setup_dap()
    require('jdtls.dap').setup_dap_main_class_configs()
    require'jdtls.setup'.add_commands()
    -- require'lsp-status'.register_progress()
    require'lspkind'.init()
    -- require'lspsaga'.init_lsp_saga()
    -- require'completion'.on_attach()

    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = {noremap = true, silent = true}
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<leader>D',
                   '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr',
                   '<cmd>lua vim.lsp.buf.references() && vim.cmd("copen")<CR>',
                   opts)
    buf_set_keymap('n', '<leader>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    -- Java specific
    buf_set_keymap("n", "<leader>fi",
                   "<Cmd>lua require'jdtls'.organize_imports()<CR>", opts)
    buf_set_keymap("n", "<leader>jt",
                   "<Cmd>lua require'jdtls'.test_class()<CR>", opts)
    buf_set_keymap("n", "<leader>jtm",
                   "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", opts)
    buf_set_keymap("v", "<leader>je",
                   "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>",
                   opts)
    buf_set_keymap("n", "<leader>je",
                   "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
    buf_set_keymap("v", "<leader>jm",
                   "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>",
                   opts)

    -- Set some keybinds conditional on server capabilities
    buf_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    buf_set_keymap("n", "<leader>fr", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)

    vim.api.nvim_exec([[
          hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
          hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
          hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
          augroup lsp_document_highlight
            autocmd!
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
      ]], false)

  end

  local root_markers = {'gradlew', 'pom.xml'}
  local root_dir = require('jdtls.setup').find_root(root_markers)
  local home = os.getenv('HOME')

  local capabilities = {
    workspace = {configuration = true},
    textDocument = {completion = {completionItem = {snippetSupport = true}}}
  }

  local workspace_folder = home .. "/.local/share/nvim/lspinstall/java/workspace/" ..
                               vim.fn.fnamemodify(root_dir, ":p:h:t")
  local config = {
    flags = {allow_incremental_sync = true},
    capabilities = capabilities,
    on_attach = on_attach,
    filetypes = {'java'},
    cmd = {'jdtls.sh', workspace_folder}
  }

  config.settings = {
    ['java.format.settings.url'] = home ..
        "/project/java-google-formatter.xml",
    ['java.format.settings.profile'] = "GoogleStyle",
    java = {
      signatureHelp = {enabled = true},
      contentProvider = {preferred = 'fernflower'},
      completion = {
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat", "org.hamcrest.Matchers.*",
          "org.hamcrest.CoreMatchers.*", "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse", "org.mockito.Mockito.*"
        }
      },
      sources = {
        organizeImports = {starThreshold = 9999, staticStarThreshold = 9999}
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
        }
      },
      configuration = {
        runtimes = {
          {name = "JavaSE-11", path = "/usr/lib/jvm/java-11-openjdk/"},
          {name = "JavaSE-1.8", path = "/usr/lib/jvm/java-8-openjdk/"}
          --[[ {
                name = "JavaSE-14",
                path = home .. "/usr/lib/jvm/java-11-openjdk/",
              }, ]]
        }
      }
    }
  }
  config.on_attach = on_attach
  config.on_init = function(client, _)
    client.notify('workspace/didChangeConfiguration',
                  {settings = config.settings})
  end

  --[[ local jar_patterns = {
    '~/.config/nvim/lua/lsp/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar',
    -- '/dev/dgileadi/vscode-java-decompiler/server/*.jar',
    '~/.config/nvim/lua/lsp/java/vscode-java-test/server/*.jar'
  }

  local bundles = {}
  for _, jar_pattern in ipairs(jar_patterns) do
    for _, bundle in ipairs(vim.split(vim.fn.glob(home .. jar_pattern), '\n')) do
      if not vim.endswith(bundle, 'com.microsoft.java.test.runner.jar') then
        table.insert(bundles, bundle)
      end
    end
  end ]]
local bundles = {
  vim.fn.glob(home ..  '/.config/nvim/lua/lsp/java/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar'),
}
vim.list_extend(bundles, vim.split(vim.fn.glob(home ..  '/.config/nvim/lua/lsp/java/vscode-java-test/server/*.jar'), '\n'))

  local extendedClientCapabilities = require'jdtls'.extendedClientCapabilities
  extendedClientCapabilities.resolveAdditionalTextEditsSupport = true
  config.init_options = {
    bundles = bundles,
    extendedClientCapabilities = extendedClientCapabilities
  }

  -- UI
  local finders = require 'telescope.finders'
  local sorters = require 'telescope.sorters'
  local actions = require 'telescope.actions'
  local pickers = require 'telescope.pickers'
  require('jdtls.ui').pick_one_async = function(items, prompt, label_fn, cb)
    local opts = {}
    pickers.new(opts, {
      prompt_title = prompt,
      finder = finders.new_table {
        results = items,
        entry_maker = function(entry)
          return {
            value = entry,
            display = label_fn(entry),
            ordinal = label_fn(entry)
          }
        end
      },
      sorter = sorters.get_generic_fuzzy_sorter(),
      attach_mappings = function(prompt_bufnr)
        actions.goto_file_selection_edit:replace(function()
          local selection = actions.get_selected_entry(prompt_bufnr)
          actions.close(prompt_bufnr)

          cb(selection.value)
        end)

        return true
      end
    }):find()
  end

  -- Server
  require('jdtls').start_or_attach(config)
end

return M
