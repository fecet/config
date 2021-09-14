-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rok/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-look"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-look"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-spell"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-tabnine"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-treesitter"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nä\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\bexe\rprettier\nstdin\2D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\bexe\frustfmt\nstdin\2J\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\bexe\15lua-format\nstdin\2¢\1\1\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\0034\4\3\0003\5\a\0>\5\1\4=\4\b\0034\4\3\0003\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.eviline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/glow.nvim"
  },
  hop = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/hop"
  },
  kommentary = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\nà\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\2\15toggle_key\n<M-s>\16hint_prefix\tÓûõ \1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    config = { "\27LJ\2\nŸ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\21\nColor\bÓà´\rProperty\bÓò§\fSnippet\bÔ¨å\16Constructor\bÓàè\fKeyword\bÔ†Ö\vModule\bÔ£ñ\tEnum\b‰∫Ü\vStruct\bÔÉä\nValue\bÔ¢ü\rConstant\bÓà¨\tUnit\bÔëµ\aDB\bÓúÜ\nClass\bÓÉç\rVariable\bÓûõ\14Interface\bÔ∞Æ\rFunction\bÔÇö\vMethod\a∆í\tText\bÓòí\15EnumMember\bÔÖù\vFolder\bÔÑï\tFile\bÔÖõ\1\0\2\14with_text\2\vpreset\rcodicons\tinit\flspkind\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 √\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim¢\1\0\1\t\0\b\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2¢\1\0\1\t\0\b\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2:\0\2\4\1\3\0\a-\2\0\0009\2\1\0029\2\2\0029\3\0\0018\2\3\2=\2\0\1L\1\2\0\1¿\fdefault\fpresets\tkindï\6\1\0\n\0-\0M6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\b\0003\6\a\0=\6\t\5=\5\n\0045\5\r\0009\6\v\0009\6\f\6)\b\4\0B\6\2\2=\6\14\0059\6\v\0009\6\f\6)\b¸ˇB\6\2\2=\6\15\0059\6\v\0009\6\16\6B\6\1\2=\6\17\0059\6\v\0009\6\18\6B\6\1\2=\6\19\0059\6\v\0009\6\20\0065\b\23\0009\t\21\0009\t\22\t=\t\24\bB\6\2\2=\6\25\0053\6\26\0=\6\27\0053\6\28\0=\6\29\5=\5\v\0044\5\t\0005\6\30\0>\6\1\0055\6\31\0>\6\2\0055\6 \0>\6\3\0055\6!\0>\6\4\0055\6\"\0>\6\5\0055\6#\0>\6\6\0055\6$\0>\6\a\0055\6%\0>\6\b\5=\5&\0045\5(\0003\6'\0=\6)\5=\5*\4B\2\2\0016\2\0\0'\4+\0B\2\2\0029\2\3\0025\4,\0B\2\2\0012\0\0ÄK\0\1\0\1\0\3\16auto_select\2\17map_complete\2\vmap_cr\2\"nvim-autopairs.completion.cmp\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tlook\1\0\1\tname\26vim-dadbod-completion\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\16cmp_tabnine\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-u>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\flspkind\bcmp\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text"
  },
  ["nvim-hlslens"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-hlslens"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimˇ\21\1\2\n\1K\0’\0013\2\0\0003\3\1\0009\4\2\0\a\4\3\0X\4\15Ä6\4\4\0'\6\5\0B\4\2\0029\4\6\4B\4\1\0016\4\4\0'\6\a\0B\4\2\0029\4\b\4B\4\1\0016\4\4\0'\6\t\0B\4\2\0029\4\n\4B\4\1\1\18\4\3\0'\6\v\0'\a\f\0B\4\3\1\18\4\2\0'\6\r\0'\a\14\0'\b\15\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\16\0'\b\17\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\18\0'\b\19\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\20\0'\b\21\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\22\0'\b\23\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\24\0'\b\25\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\26\0'\b\27\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\28\0'\b\29\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\30\0'\b\31\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a \0'\b!\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\"\0'\b#\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a$\0'\b%\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a&\0'\b'\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a(\0'\b)\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a*\0'\b+\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a,\0'\b-\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a,\0'\b/\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a0\0'\b1\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a2\0'\b3\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a4\0'\b5\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a4\0'\b6\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a7\0'\b8\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a7\0'\b9\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a:\0'\b;\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a<\0'\b=\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a>\0'\b?\0-\t\0\0B\4\5\0019\4@\0009\4A\4\15\0\4\0X\5\aÄ\18\4\2\0'\6\r\0'\aB\0'\bC\0-\t\0\0B\4\5\1X\4\nÄ9\4@\0009\4D\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\r\0'\aB\0'\bE\0-\t\0\0B\4\5\0019\4@\0009\4F\4\15\0\4\0X\5\6Ä6\4G\0009\4H\0049\4I\4'\6J\0+\a\1\0B\4\3\0012\0\0ÄK\0\1\0\1¿›\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn,<cmd>Telescope lsp_type_definitions<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>+<cmd>Telescope lsp_implementations<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K'<Cmd>Telescope lsp_definitions<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0Í\2\0\0\4\1\18\0\0296\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0009\1\a\0009\1\b\0019\1\t\1+\2\2\0=\2\n\0019\1\a\0009\1\b\0019\1\t\0015\2\r\0005\3\f\0=\3\14\2=\2\v\0015\1\15\0=\0\16\1-\2\0\0=\2\17\1L\1\2\0\2¿\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim„\6\0\0\r\1(\0U6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\0026\1\4\0009\1\5\1\18\3\0\0'\4\6\0B\1\3\0016\1\4\0009\1\5\1\18\3\0\0'\4\a\0B\1\3\0016\1\b\0\18\3\0\0B\1\2\4H\4:Ä-\6\0\0B\6\1\2\a\5\t\0X\a\4Ä6\a\0\0'\t\v\0B\a\2\2=\a\n\6\a\5\a\0X\a\2Ä5\a\r\0=\a\f\6\a\5\6\0X\a\2Ä5\a\14\0=\a\f\6\a\5\15\0X\a!Ä6\a\0\0'\t\16\0B\a\2\0029\b\17\a=\b\17\0069\b\n\a=\b\n\0069\b\18\a=\b\18\0069\b\19\0069\b\20\b+\t\2\0=\t\21\b9\b\19\0069\b\22\b5\t\24\0005\n\26\0005\v\25\0=\v\27\n=\n\28\t5\n \0005\v\30\0005\f\29\0=\f\31\v=\v!\n=\n\"\t=\t\23\b9\b#\a=\b#\0065\b$\0=\b\f\0065\b&\0=\b%\0066\a\0\0'\t'\0B\a\2\0028\a\5\a9\a\2\a\18\t\6\0B\a\2\1F\4\3\3R\4ƒK\0\1\0\3¿\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\29codeActionLiteralSupport\19codeActionKind\1\0\0\rvalueSet\1\0\0\1\4\0\0\29source.generate.toString#source.generate.hashCodeEquals\27source.organizeImports\19resolveSupport\15properties\1\0\0\1\2\0\0\tedit\1\0\1\16dataSupport\2\15codeAction\17textDocument\18configuration\14workspace\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\0¿\fbufdo e\bcmd\bvim\18setup_serversé\1\1\0\a\0\t\0\0154\0\0\0005\1\0\0003\2\1\0003\3\2\0003\4\4\0=\4\3\0009\4\3\0B\4\1\0016\4\5\0'\6\6\0B\4\2\0023\5\b\0=\5\a\0042\0\0ÄK\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-lsputils"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.lsputils\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-spectre"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n’\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\b\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20insert_mappings\1\20start_in_insert\2\20shade_terminals\2\17hide_numbers\1\tsize\3\15\nsetup\15toggleterm\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-transparent"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-transparent"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n \6\0\0\6\0$\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3!\0005\4\31\0005\5 \0=\5\25\4=\4\"\3=\3#\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\rrefactor\15navigation\1\0\5\21list_definitions\bgnD\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  onebuddy = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/onebuddy"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\17silent_chdir\1\16show_hidden\2\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["rest.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/rest.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["snippets.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\27use_suggested_mappings\rsnippets\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/snippets.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n]\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/spellsitter.nvim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-dap.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim"
  },
  ["telescope-fzf-writer.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-fzf-writer.nvim"
  },
  ["telescope-hop.nvim"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope-hop.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionÚ\4\1\0\n\0\29\0>6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\16\0005\5\14\0005\6\6\0009\a\4\0009\b\5\0 \a\b\a=\a\a\0066\a\b\0'\t\2\0B\a\2\0029\a\t\a9\a\n\a9\a\n\a=\a\v\0063\a\f\0=\a\r\6=\6\15\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0045\5\23\0=\5\n\0045\5\24\0=\5\25\4=\4\t\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\27\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\28\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\n\0B\1\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\29minimum_files_characters\3\2\28minimum_grep_characters\3\2\20use_highlighter\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["vim-cursorword"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-cursorword"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-interestingwords"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-interestingwords"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-translator"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-translator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n´\a\0\0\6\0/\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\1\3\0005\3\23\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\0035\4\27\0005\5\28\0=\5\29\4=\4\30\0035\4\31\0=\4\20\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4\b\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4\18\0035\4*\0=\4\f\0035\4+\0=\4\14\0035\4,\0=\4\22\0035\4-\0=\4\16\0035\4.\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6p\1\0\1\tname\16Plug Action\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\19History & Help\6m\1\0\1\tname\24Mark & Man & Format\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/rok/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-toggleterm.lua
time([[Config for nvim-toggleterm.lua]], true)
try_loadstring("\27LJ\2\n’\1\0\0\4\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0006\3\4\0009\3\5\0039\3\6\3=\3\6\2B\0\2\1K\0\1\0\nshell\6o\bvim\1\0\b\18close_on_exit\2\14direction\15horizontal\17persist_size\2\20insert_mappings\1\20start_in_insert\2\20shade_terminals\2\17hide_numbers\1\tsize\3\15\nsetup\15toggleterm\frequire\0", "config", "nvim-toggleterm.lua")
time([[Config for nvim-toggleterm.lua]], false)
-- Config for: snippets.nvim
time([[Config for snippets.nvim]], true)
try_loadstring("\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\27use_suggested_mappings\rsnippets\frequire\0", "config", "snippets.nvim")
time([[Config for snippets.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n \6\0\0\6\0$\0+6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0024\3\0\0=\3\b\0025\3\t\0004\4\0\0=\4\n\3=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\0025\3\16\0=\3\17\0025\3\19\0005\4\18\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0005\5\24\0=\5\25\4=\4\26\0035\4\27\0005\5\28\0=\5\25\4=\4\29\3=\3\30\0025\3!\0005\4\31\0005\5 \0=\5\25\4=\4\"\3=\3#\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\1\0\4\aif\20@function.inner\aic\17@class.inner\aaf\20@function.outer\aac\17@class.outer\1\0\2\venable\2\14lookahead\2\rrefactor\15navigation\1\0\5\21list_definitions\bgnD\24goto_previous_usage\n<a-#>\20goto_definition\bgnd\20goto_next_usage\n<a-*>\25list_definitions_toc\agO\1\0\1\venable\2\17smart_rename\fkeymaps\1\0\1\17smart_rename\bgrr\1\0\1\venable\2\28highlight_current_scope\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\frainbow\1\0\2\18extended_mode\2\venable\2\fmatchip\1\0\1\venable\2\14autopairs\1\0\1\venable\2\14highlight\fdisable\1\0\1\venable\2\19ignore_install\fautotag\1\0\1\21ensure_installed\ball\14filetypes\1\b\0\0\thtml\15javascript\20javascriptreact\20typescriptreact\vsvelte\bvue\bxml\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: spellsitter.nvim
time([[Config for spellsitter.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\rcaptures\1\0\1\ahl\rSpellBad\nsetup\16spellsitter\frequire\0", "config", "spellsitter.nvim")
time([[Config for spellsitter.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n´\a\0\0\6\0/\0=6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\1\3\0005\3\23\0005\4\4\0005\5\5\0=\5\6\0045\5\a\0=\5\b\0045\5\t\0=\5\n\0045\5\v\0=\5\f\0045\5\r\0=\5\14\0045\5\15\0=\5\16\0045\5\17\0=\5\18\0045\5\19\0=\5\20\0045\5\21\0=\5\22\4=\4\24\0035\4\25\0=\4\26\0035\4\27\0005\5\28\0=\5\29\4=\4\30\0035\4\31\0=\4\20\0035\4 \0=\4!\0035\4\"\0=\4#\0035\4$\0=\4\b\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4\18\0035\4*\0=\4\f\0035\4+\0=\4\14\0035\4,\0=\4\22\0035\4-\0=\4\16\0035\4.\0B\1\3\1K\0\1\0\1\0\1\vprefix\r<leader>\1\0\1\tname\15Git Action\1\0\1\tname\27Paste System Clipboard\1\0\1\tname\14Workspace\1\0\1\tname\14Translate\1\0\1\tname\29Session & Spectre Action\6r\1\0\1\tname\27Ranger & Rename & Rest\6o\1\0\1\tname\29Operate Dashboard Action\1\0\1\tname\rMarkdown\6l\1\0\1\tname\20List Of Trouble\6x\1\0\1\tname\25Close Current Buffer\1\0\1\tname\15DAP Action\6c\6j\1\0\1\tname\21Java Code Action\1\0\1\tname\16Code Action\6b\1\0\1\tname\19Buffer Operate\6f\1\0\0\6p\1\0\1\tname\16Plug Action\6d\1\0\1\tname\25DAP Telescope Action\6s\1\0\1\tname\fSpectre\6g\1\0\1\tname\15Git Action\6w\1\0\1\tname\27Workspace & LSP Action\6t\1\0\1\tname\27TreeSitter & FileTypes\6h\1\0\1\tname\19History & Help\6m\1\0\1\tname\24Mark & Man & Format\6i\1\0\1\tname\23Buildin & Reloader\1\0\1\tname\31Find By Telescope & Format\rregister\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.eviline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ndapui\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nä\1\0\0\5\0\6\0\n5\0\0\0005\1\1\0006\2\2\0009\2\3\0029\2\4\2)\4\0\0B\2\2\2>\2\2\1=\1\5\0L\0\2\0\targs\22nvim_buf_get_name\bapi\bvim\1\4\0\0\21--stdin-filepath\0\19--single-quote\1\0\2\bexe\rprettier\nstdin\2D\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\2\0\0\18--emit=stdout\1\0\2\bexe\frustfmt\nstdin\2J\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\19--indent-width\3\2\1\0\2\bexe\15lua-format\nstdin\2¢\1\1\0\6\0\f\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\0034\4\3\0003\5\a\0>\5\1\4=\4\b\0034\4\3\0003\5\t\0>\5\1\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rfiletype\blua\0\trust\0\15javascript\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-lsputils
time([[Config for nvim-lsputils]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21plugins.lsputils\frequire\0", "config", "nvim-lsputils")
time([[Config for nvim-lsputils]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: rest.nvim
time([[Config for rest.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14rest-nvim\frequire\0", "config", "rest.nvim")
time([[Config for rest.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nª\1\0\1\6\1\n\0\0175\1\1\0-\2\0\0009\2\0\2=\2\2\1-\2\0\0009\2\3\2=\2\4\0016\2\5\0'\4\6\0B\2\2\0029\2\a\0029\2\b\0029\2\t\2\18\4\0\0\18\5\1\0B\2\3\1K\0\1\0\0¿\14_hop_loop\bhop\15extensions\14telescope\frequire\18loop_callback\28send_selected_to_qflist\rcallback\1\0\0\21toggle_selectionÚ\4\1\0\n\0\29\0>6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\18\0005\4\16\0005\5\14\0005\6\6\0009\a\4\0009\b\5\0 \a\b\a=\a\a\0066\a\b\0'\t\2\0B\a\2\0029\a\t\a9\a\n\a9\a\n\a=\a\v\0063\a\f\0=\a\r\6=\6\15\5=\5\17\4=\4\19\0035\4\21\0005\5\20\0=\5\22\0045\5\23\0=\5\n\0045\5\24\0=\5\25\4=\4\t\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\27\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\28\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\22\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\26\1'\3\n\0B\1\2\0012\0\0ÄK\0\1\0\rprojects\bdap\19load_extension\15fzf_writer\1\0\3\29minimum_files_characters\3\2\28minimum_grep_characters\3\2\20use_highlighter\2\1\0\2\16trace_entry\2\20reset_selection\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\1\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\14<C-space>\0\n<C-h>\bhop\15extensions\6R\n<C-t>\1\0\0\16open_qflist\19send_to_qflist\nsetup\14telescope\22telescope.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n‚\a\0\0\5\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0005\4\a\0=\4\b\0035\4\t\0=\4\n\3=\3\v\2B\0\2\1K\0\1\0\fkeymaps\tn [c\1\2\1\0H&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'\texpr\2\tn ]c\1\2\1\0H&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'\texpr\2\1\0\v\17n <leader>gs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\17n <leader>gb4<cmd>lua require\"gitsigns\".blame_line(true)<CR>\to ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17n <leader>gp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>gR2<cmd>lua require\"gitsigns\".reset_buffer()<CR>\tx ih::<C-U>lua require\"gitsigns.actions\".select_hunk()<CR>\17v <leader>grT<cmd>lua require\"gitsigns\".reset_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\17n <leader>gr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\17n <leader>gu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17v <leader>gsT<cmd>lua require\"gitsigns\".stage_hunk({vim.fn.line(\".\"), vim.fn.line(\"v\")})<CR>\fnoremap\2\28current_line_blame_opts\1\0\1\ndelay\3Ù\3\1\0\1\23current_line_blame\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim¢\1\0\1\t\0\b\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-n>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2¢\1\0\1\t\0\b\1\0236\1\0\0009\1\1\0019\1\2\1B\1\1\2\t\1\0\0X\1\14Ä6\1\0\0009\1\1\0019\1\3\0016\3\0\0009\3\4\0039\3\5\3'\5\6\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2'\4\a\0B\1\3\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\6n\n<C-p>\27nvim_replace_termcodes\bapi\rfeedkeys\15pumvisible\afn\bvim\2:\0\2\4\1\3\0\a-\2\0\0009\2\1\0029\2\2\0029\3\0\0018\2\3\2=\2\0\1L\1\2\0\1¿\fdefault\fpresets\tkindï\6\1\0\n\0-\0M6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\5\0005\5\4\0=\5\6\0045\5\b\0003\6\a\0=\6\t\5=\5\n\0045\5\r\0009\6\v\0009\6\f\6)\b\4\0B\6\2\2=\6\14\0059\6\v\0009\6\f\6)\b¸ˇB\6\2\2=\6\15\0059\6\v\0009\6\16\6B\6\1\2=\6\17\0059\6\v\0009\6\18\6B\6\1\2=\6\19\0059\6\v\0009\6\20\0065\b\23\0009\t\21\0009\t\22\t=\t\24\bB\6\2\2=\6\25\0053\6\26\0=\6\27\0053\6\28\0=\6\29\5=\5\v\0044\5\t\0005\6\30\0>\6\1\0055\6\31\0>\6\2\0055\6 \0>\6\3\0055\6!\0>\6\4\0055\6\"\0>\6\5\0055\6#\0>\6\6\0055\6$\0>\6\a\0055\6%\0>\6\b\5=\5&\0045\5(\0003\6'\0=\6)\5=\5*\4B\2\2\0016\2\0\0'\4+\0B\2\2\0029\2\3\0025\4,\0B\2\2\0012\0\0ÄK\0\1\0\1\0\3\16auto_select\2\17map_complete\2\vmap_cr\2\"nvim-autopairs.completion.cmp\15formatting\vformat\1\0\0\0\fsources\1\0\1\tname\15treesitter\1\0\1\tname\tlook\1\0\1\tname\26vim-dadbod-completion\1\0\1\tname\vbuffer\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\16cmp_tabnine\1\0\1\tname\rnvim_lsp\f<S-Tab>\0\n<Tab>\0\t<CR>\rbehavior\1\0\1\vselect\2\fReplace\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-u>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\vexpand\1\0\0\0\15completion\1\0\0\1\0\1\16completeopt\26menu,menuone,noinsert\nsetup\flspkind\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\nà\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\17handler_opts\1\0\2\15toggle_key\n<M-s>\16hint_prefix\tÓûõ \1\0\1\vborder\tnone\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: diffview.nvim
time([[Config for diffview.nvim]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15file_panel\1\0\1\nwidth\3#\1\0\2\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\frequire\0", "config", "diffview.nvim")
time([[Config for diffview.nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
try_loadstring("\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1¿\24nvim_buf_set_option\bapi\bvimˇ\21\1\2\n\1K\0’\0013\2\0\0003\3\1\0009\4\2\0\a\4\3\0X\4\15Ä6\4\4\0'\6\5\0B\4\2\0029\4\6\4B\4\1\0016\4\4\0'\6\a\0B\4\2\0029\4\b\4B\4\1\0016\4\4\0'\6\t\0B\4\2\0029\4\n\4B\4\1\1\18\4\3\0'\6\v\0'\a\f\0B\4\3\1\18\4\2\0'\6\r\0'\a\14\0'\b\15\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\16\0'\b\17\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\18\0'\b\19\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\20\0'\b\21\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\22\0'\b\23\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\24\0'\b\25\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\26\0'\b\27\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\28\0'\b\29\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\30\0'\b\31\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a \0'\b!\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a\"\0'\b#\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a$\0'\b%\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a&\0'\b'\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a(\0'\b)\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a*\0'\b+\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a,\0'\b-\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a,\0'\b/\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a0\0'\b1\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a2\0'\b3\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a4\0'\b5\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a4\0'\b6\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a7\0'\b8\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a7\0'\b9\0-\t\0\0B\4\5\1\18\4\2\0'\6.\0'\a:\0'\b;\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a<\0'\b=\0-\t\0\0B\4\5\1\18\4\2\0'\6\r\0'\a>\0'\b?\0-\t\0\0B\4\5\0019\4@\0009\4A\4\15\0\4\0X\5\aÄ\18\4\2\0'\6\r\0'\aB\0'\bC\0-\t\0\0B\4\5\1X\4\nÄ9\4@\0009\4D\4\15\0\4\0X\5\6Ä\18\4\2\0'\6\r\0'\aB\0'\bE\0-\t\0\0B\4\5\0019\4@\0009\4F\4\15\0\4\0X\5\6Ä6\4G\0009\4H\0049\4I\4'\6J\0+\a\1\0B\4\3\0012\0\0ÄK\0\1\0\1¿›\1    augroup lsp_document_highlight\n    autocmd! * <buffer>\n    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()\n    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()\n    augroup END\n    \14nvim_exec\bapi\bvim\23document_highlight0<cmd>lua vim.lsp.buf.range_formatting()<CR>\30document_range_formatting*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>fm\24document_formatting\26resolved_capabilities8<Cmd>lua require('jdtls').test_nearest_method()<CR>\16<leader>cjn/<Cmd>lua require('jdtls').test_class()<CR>\16<leader>cjt7<Cmd>lua require('jdtls').extract_method(true)<CR>\15<leader>cm9<Cmd>lua require('jdtls').extract_constant(true)<CR>5<Cmd>lua require('jdtls').extract_constant()<CR>\15<leader>ct9<Cmd>lua require('jdtls').extract_variable(true)<CR>5<Cmd>lua require('jdtls').extract_variable()<CR>\15<leader>cv5<Cmd>lua require('jdtls').organize_imports()<CR>\15<leader>coA<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>\15<leader>cr4<Cmd>lua require('jdtls').code_action(true)<CR>\6v0<Cmd>lua require('jdtls').code_action()<CR>\15<leader>ca2<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>q0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\a]d0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\a[d<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\14<leader>e*<cmd>lua vim.lsp.buf.references()<CR>\agr&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn,<cmd>Telescope lsp_type_definitions<CR>\14<leader>DJ<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>\15<leader>wl7<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>\15<leader>wr4<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>\15<leader>wa.<cmd>lua vim.lsp.buf.signature_help()<CR>\n<C-k>+<cmd>Telescope lsp_implementations<CR>\agi%<Cmd>lua vim.lsp.buf.hover()<CR>\6K'<Cmd>Telescope lsp_definitions<CR>\agd+<Cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\27v:lua.vim.lsp.omnifunc\romnifunc\17add_commands\16jdtls.setup\14setup_dap\njdtls!setup_dap_main_class_configs\14jdtls.dap\frequire\tjava\tname\0\0Í\2\0\0\4\1\18\0\0296\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0009\1\a\0009\1\b\0019\1\t\1+\2\2\0=\2\n\0019\1\a\0009\1\b\0019\1\t\0015\2\r\0005\3\f\0=\3\14\2=\2\v\0015\1\15\0=\0\16\1-\2\0\0=\2\17\1L\1\2\0\2¿\14on_attach\17capabilities\1\0\0\15properties\1\0\0\1\4\0\0\18documentation\vdetail\24additionalTextEdits\19resolveSupport\19snippetSupport\19completionItem\15completion\17textDocument\24update_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim„\6\0\0\r\1(\0U6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0B\0\1\0026\1\4\0009\1\5\1\18\3\0\0'\4\6\0B\1\3\0016\1\4\0009\1\5\1\18\3\0\0'\4\a\0B\1\3\0016\1\b\0\18\3\0\0B\1\2\4H\4:Ä-\6\0\0B\6\1\2\a\5\t\0X\a\4Ä6\a\0\0'\t\v\0B\a\2\2=\a\n\6\a\5\a\0X\a\2Ä5\a\r\0=\a\f\6\a\5\6\0X\a\2Ä5\a\14\0=\a\f\6\a\5\15\0X\a!Ä6\a\0\0'\t\16\0B\a\2\0029\b\17\a=\b\17\0069\b\n\a=\b\n\0069\b\18\a=\b\18\0069\b\19\0069\b\20\b+\t\2\0=\t\21\b9\b\19\0069\b\22\b5\t\24\0005\n\26\0005\v\25\0=\v\27\n=\n\28\t5\n \0005\v\30\0005\f\29\0=\f\31\v=\v!\n=\n\"\t=\t\23\b9\b#\a=\b#\0065\b$\0=\b\f\0065\b&\0=\b%\0066\a\0\0'\t'\0B\a\2\0028\a\5\a9\a\2\a\18\t\6\0B\a\2\1F\4\3\3R\4ƒK\0\1\0\3¿\14lspconfig\1\0\1\27allow_incremental_sync\2\nflags\1\2\0\0\tjava\bcmd\29codeActionLiteralSupport\19codeActionKind\1\0\0\rvalueSet\1\0\0\1\4\0\0\29source.generate.toString#source.generate.hashCodeEquals\27source.organizeImports\19resolveSupport\15properties\1\0\0\1\2\0\0\tedit\1\0\1\16dataSupport\2\15codeAction\17textDocument\18configuration\14workspace\17capabilities\fon_init\17init_options\22lsp.java.settings\tjava\1\3\0\0\6c\bcpp\1\4\0\0\nswift\16objective-c\18objective-cpp\14filetypes\21lsp.lua.settings\rsettings\blua\npairs\14sourcekit\vclangd\vinsert\ntable\22installed_servers\nsetup\15lspinstall\frequireG\0\0\3\1\4\0\b-\0\0\0009\0\0\0B\0\1\0016\0\1\0009\0\2\0'\2\3\0B\0\2\1K\0\1\0\0¿\fbufdo e\bcmd\bvim\18setup_serversé\1\1\0\a\0\t\0\0154\0\0\0005\1\0\0003\2\1\0003\3\2\0003\4\4\0=\4\3\0009\4\3\0B\4\1\0016\4\5\0'\6\6\0B\4\2\0023\5\b\0=\5\a\0042\0\0ÄK\0\1\0\0\22post_install_hook\15lspinstall\frequire\0\18setup_servers\0\0\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspinstall")
time([[Config for nvim-lspinstall]], false)
-- Config for: lspkind-nvim
time([[Config for lspkind-nvim]], true)
try_loadstring("\27LJ\2\nŸ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\15symbol_map\1\0\21\nColor\bÓà´\rProperty\bÓò§\fSnippet\bÔ¨å\16Constructor\bÓàè\fKeyword\bÔ†Ö\vModule\bÔ£ñ\tEnum\b‰∫Ü\vStruct\bÔÉä\nValue\bÔ¢ü\rConstant\bÓà¨\tUnit\bÔëµ\aDB\bÓúÜ\nClass\bÓÉç\rVariable\bÓûõ\14Interface\bÔ∞Æ\rFunction\bÔÇö\vMethod\a∆í\tText\bÓòí\15EnumMember\bÔÖù\vFolder\bÔÑï\tFile\bÔÖõ\1\0\2\14with_text\2\vpreset\rcodicons\tinit\flspkind\frequire\0", "config", "lspkind-nvim")
time([[Config for lspkind-nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\nÀ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\rpatterns\1\b\0\0\t.git\v_darcs\b.hg\t.bzr\t.svn\rMakefile\17package.json\22detection_methods\1\0\2\17silent_chdir\1\16show_hidden\2\1\3\0\0\blsp\fpattern\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\n}\0\4\14\0\a\0\21'\4\0\0006\5\1\0\18\a\2\0B\5\2\4H\b\rÄ\a\b\2\0X\n\2Ä'\n\3\0X\v\5Ä\a\b\4\0X\n\2Ä'\n\5\0X\v\1Ä'\n\6\0\18\v\4\0\18\f\n\0\18\r\t\0&\4\r\vF\b\3\3R\bÒL\4\2\0\bÔÅ™\bÔÅ±\fwarning\bÔÅó\nerror\npairs\6 √\1\1\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0003\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\26diagnostics_indicator\0\1\0\4\16diagnostics\rnvim_lsp\28show_buffer_close_icons\1\20show_close_icon\1\22show_buffer_icons\2\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
