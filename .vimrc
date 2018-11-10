if &compatible
  set nocompatible               " Be iMproved
endif



call plug#begin('~/.local/share/nvim/plugged')
  " file finder
  Plug 'ctrlpvim/ctrlp.vim'
  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " completion server
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer --go-completer' }
  "git
  Plug 'tpope/vim-fugitive'
  "turn foo into 'foo'
  Plug 'tpope/vim-surround'
  " :Cmake support
  Plug 'vhdirk/vim-cmake'	
  " fuzzyfinder
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  "linting
  Plug 'w0rp/ale'
    
  Plug 'flazz/vim-colorschemes'
  Plug 'felixhummel/setcolors.vim'
call plug#end()

" Required:
filetype plugin indent on
syntax enable

"remap shift W or Q to do the same as lowercase
command WQ wq
command Wq wq
command W w
command Q q
command QA qa
command WQA wqa


"ctrlp vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

">'Airline >'Thene:
let g:airline_theme='bubblegum'
let g:airline_solarized_bg='dark'

"colorscheme 
colorscheme 1989


"ycmd conf

"line numbers
:set number

"tabs 
set expandtab
set tabstop=4
set shiftwidth=4

let mapleader = "\<Space>"
nnoremap <leader>ev :vnew ~/.vimrc<cr>
nnoremap <leader>a :Ag<cr>


"window movement
nnoremap <C-h> <c-w>h
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-l> <c-w>l

"block cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"


nnoremap <leader>t :! tmux send-keys -t 1 "cmake ..&& make" Enter<CR><CR>
nnoremap <leader>c :CMake<CR>
nnoremap <leader>b :make!<CR>

"clang-rename
noremap <leader>cr :py3f ~/.scripts/clang-rename.py<cr>



