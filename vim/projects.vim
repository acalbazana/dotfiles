let g:project_enable_welcome = 0

noremap <silent> <Leader>p :Welcome<CR>

"let g:project_use_nerdtree = 1
" custom starting path
set rtp+=~/.vim/bundle/vim-project/
call project#rc("$HOME/src")

Project 'com.cscglobal.samples.terraform-vault' , 'vault'
Project '~/.config/vim', 'vim-config'
Project 'com.cscglobal.samples.api-management', 'api-management'
Project 'dotfiles', 'dotfiles'

call project#rc()
