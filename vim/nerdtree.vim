" nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <silent> <expr> <Leader>n g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"


let NERDTreeQuitOnOpen = 0 
let NERDTreeMinimalUI = 1 
let NERDTreeDirArrows = 1
let g:NERDTreeShowHidden = 1

" nerdtree git status 
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "*",
    \ "Staged"    : "+",
    \ "Untracked" : "o",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "",
    \ "Dirty"     : "!",
    \ "Clean"     : "v",
    \ 'Ignored'   : 'X',
    \ "Unknown"   : "?"
    \ }
