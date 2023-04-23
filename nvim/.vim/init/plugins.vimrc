" Enable auto-completion using neocomplete
let g:neocomplete#enable_at_startup = 1

lua require 'colorizer'.setup()

" Save files
nnoremap <silent><C-s> :w<CR>

" Shortcut for saving the file
" nmap <leader>w :w<CR>

" Shortcut for quitting vim
" nmap <leader>q :q<CR>

" Shortcut for quitting vim without saving changes
" nmap <leader>Q :q!<CR>

"let NERDTreeMapOpenInTab='<ENTER>'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen = 0 
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Enable git gutter
let g:gitgutter_enabled = 1

" Enable syntax checker
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <C-t> :terminal<CR>

"nmap <C-P> :FZF<CR>

let g:fzf_layout = { 'down': '40%' }


nnoremap <Leader>dd :call vimspector#Launch()<CR>
nnoremap <Leader>de :call vimspector#Reset()<CR>
nnoremap <Leader>dc :call vimspector#Coninue()<CR>

nnoremap <Leader>dt :call vimspector#ToggleBreakpoint()<CR>
nnoremap <Leader>dT :call vimspector#ClearBreakpoints()<CR>

" Tabs
let g:airline#extensions#tabline#enabled=0
let g:airline#extensions#tabline#fnamemode=':t'


" NERDCommenter
"nmap <C-_> <Plug>NERDCommenterToggle
"vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

let g:python3_host_prog = '/usr/bin/python3'

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

nnoremap <silent> <C-y> :CtrlPBuffer<CR>
