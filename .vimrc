" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'EdenEast/nightfox.nvim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-emoji'

call plug#end()

colorscheme carbonfox

" Remap splits navigation to C + hjkl
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap Adjusting Splits
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

" Open a Terminal
map <Leader>tt :vnew term://bash<CR>

set splitbelow splitright

set nu
