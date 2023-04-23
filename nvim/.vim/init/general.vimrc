" Set encoding to UTF-8
set encoding=utf-8

" Set line numbers
set number

" Use relative line numbers
"set relativenumber

" Set cursor line
set cursorline

" Enable syntax highlighting
syntax on

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Show matching parentheses
set showmatch

" Highlight search results
set hlsearch

" Enable mouse support in terminal
set mouse=a

" Disable backup files
set nobackup
set nowritebackup

" Disable swap files
set noswapfile

" Enable mouse scrolling in terminal
if !has('nvim')
  set ttymouse=xterm2
endif


" Visual settings
set background=dark
" colorscheme gruvbox
colorscheme dracula

"let g:airline_theme='gruvbox'

if (has("termguicolors"))
    set termguicolors
endif

" Enable automatic indentation
filetype plugin indent on

autocmd Filetype * AnyFoldActivate

autocmd BufEnter * lcd %:p:h

" No bell!
set noerrorbells visualbell t_vb=

nmap <C-w> :bd<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable undo history persistence across sessions
if has('persistent_undo')
  set undofile
endif


