" vim-plug section
call plug#begin('~/.vim/plugged')

" https://github.com/bluz71/vim-moonfly-colors
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

" https://github.com/EdenEast/nightfox.nvim
Plug 'EdenEast/nightfox.nvim' " Vim-Plug

call plug#end()

set termguicolors

colorscheme carbonfox

"colorscheme moonfly
"let g:moonflyTransparent = v:true

set nu
