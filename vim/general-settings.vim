colorscheme jellybeans 

filetype plugin indent on

highlight SignColumn ctermbg=black
highlight clear SignColumn      " clean sign column for gutter

set backupdir=~/.tmp
set cursorline
set directory=~/.tmp
set expandtab
set hidden
set hlsearch
set ignorecase smartcase
set incsearch
set lazyredraw
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
set nowrap
set nowritebackup               " do not write out changes via backup files
set nu
set ruler
set shiftround
set shiftwidth=4
set showmatch
set showmode 
set smarttab
set softtabstop=4
set tabstop=4
set viminfo+=!
set visualbell
set wildmenu
set wildmode=list:full          " show a list when pressing tab and complete
set wmh=0

syntax on


" end of line, beginning of line
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

"tab buffer navigation
nnoremap <C-S-tab> :bprevious<CR>
nnoremap <C-tab>   :bnext<CR>

"nnoremap <leader>ex :NERDTreeToggle<CR>

set signcolumn=yes


" window navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" remap tabs
nnoremap <Tab> %
vnoremap <Tab> %

" search and replace (all) word/char under 
nnoremap <leader>r :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>:%s//
nnoremap <leader><space> :nohlsearch<CR>
" nnoremap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#

" surround with single-quotes or double-quotes
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" open my VIMRC with the quickness
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>

" make a session
nnoremap <leader>s :mksession<CR>


"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>t :Tags<CR>
"nnoremap <leader>m :Marks<CR>

map mkd console mkdir%space


" git stuff
map <Leader>gwip :cd %:p:h<cr>:!git add . && git commit -m 'WIP' && git push<cr>


