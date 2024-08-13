" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'EdenEast/nightfox.nvim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vim-python/python-syntax'
Plug 'ap/vim-css-color'
Plug 'junegunn/vim-emoji'
Plug 'ghifarit53/tokyonight-vim'
Plug 'itmammoth/doorboy.vim'

call plug#end()

" Autoclose Plugin
"require("autoclose").setup()

" Color schemes
set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
"colorscheme carbonfox

let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ }
set background=dark

" Jump to the last position when reopening a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Enable mouse usage
set mouse=a

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

" Custom keybinds
nnoremap <S-H> :set invhlsearch<CR>


" Open a Terminal
map <Leader>tt :vnew term://bash<CR>

set splitbelow splitright

" Powerline settings
set laststatus=2
set noshowmode

set nu
