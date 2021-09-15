set clipboard=unnamedplus
set cursorline
set number
set relativenumber
set nocompatible
filetype on
filetype plugin on
set fileformat=unix
set noeb
syntax enable
syntax on
set t_Co=256
set cmdheight=1
set showcmd
set ruler
set laststatus=2
set title 
set whichwrap+=<,>,h,l
set ttimeoutlen=0
" set timeoutlen=500
set virtualedit=block,onemore

" ignore filetype when file search
set wildignore+=*/tmp/*,*.so,*.swp,*.png,*.jpg,*.jpeg,*.gif,*.class,*.pyc,*.pyd

" code indent
set autoindent
set cindent
set cinoptions=g0,:0,N-s,(0
set smartindent
filetype indent on
" tabs & space
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set backspace=2
set sidescroll=10
set list
set listchars=tab:>~,space:·,precedes:«,extends:»,trail:·,eol:↴
set undofile
set undodir=~/.vim/undodir
set noshowmode
set wrap
set foldmethod=marker
set foldlevelstart=99
" set relativenumber  
set mouse=a
" set cursorcolumn
" let g:indentLine_enabled = 1
set guifont=monospace:h24"
set dictionary+='~/.config/nvim/spell/en.utf-8.add'
" code lens
" command line lens menu
set wildmenu
" preview  Show extra information about the currently selected
" completion in the preview window.  Only works in
" combination with "menu" or "menuone".

" search
set hlsearch
set incsearch
set ignorecase

" buffers
set noswapfile
set autoread
set autowriteall
set confirm

" encodeing
set langmenu=zh_CN.UTF-8
set helplang=cn
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030

set hidden
set termguicolors

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
set sessionoptions+=options,resize,winpos,terminal
