syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase

set number
set relativenumber
set signcolumn=yes
set incsearch
set nohlsearch
set scrolloff=8

call plug#begin('$XDG_CONFIG_HOME/vim/plugged')

Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

nmap <leader>gd <Plug>(coc-definition) 
nmap <leader>gr <Plug>(coc-reference)
nnoremap <C-p> :GFiles<CR>
vnoremap <C-c> "+y
map <C-v> :m+<CR> <k> "+P
