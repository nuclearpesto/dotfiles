if &compatible
  set nocompatible               " Be iMproved
endif



call plug#begin('~/.local/share/nvim/plugged')
  " Required:
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer --go-completer' }
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
	
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'

call plug#end()

" Required:
filetype plugin indent on
syntax enable

"ctrlp vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

">'Airline >'Thene:
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'


" general
set expandtab
set tabstop=4


let mapleader = "\<Space>"
nnoremap <leader>ev :vnew ~/.vimrc<cr>
nnoremap <leader>a :Ag<cr>


"window movement
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l
