" vim-plug section
call plug#begin('~/.vim/plugged')

Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }

Plug 'EdenEast/nightfox.nvim'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
            
Plug 'preservim/nerdtree' |
            \ Plug 'scrooloose/nerdtree-project-plugin'

Plug 'PotatoesMaster/i3-vim-syntax'                " i3 config highlighting

call plug#end()

autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

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
