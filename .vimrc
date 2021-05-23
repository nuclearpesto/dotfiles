set directory^=$HOME/.vim/tmp//



if &compatible
  set nocompatible               " Be iMproved
endif

"show name of file in titlebar
set title
call plug#begin('~/.vim/plugged')
  " file finder
  Plug 'ctrlpvim/ctrlp.vim'
  " status bar
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  "git
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-commentary'
  "turn foo into 'foo'
  Plug 'tpope/vim-surround'
  "renaming
  Plug 'tpope/vim-eunuch' 
  " :Cmake suppor
  Plug 'vhdirk/vim-cmake'	
  " fuzzyfinder
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  "linting
  Plug 'w0rp/ale'
  Plug 'preservim/nerdtree'
  Plug 'flazz/vim-colorschemes'
  Plug 'felixhummel/setcolors.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'airblade/vim-gitgutter'
  "jupyter support
"  Plug 'jupyter-vim/jupyter-vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " live search/replace
  Plug 'osyo-manga/vim-over'
  
  "rust.vim
  Plug 'rust-lang/rust.vim' 
  
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
let g:ctrlp_custom_ignore = 'assets\|node_modules\|git\|target\|build'

">'Airline >'Thene:
let g:airline_theme='solarized'
let g:airline_solarized_bg='light'

"colorscheme 
colorscheme solarized  
set background=dark

" change ctrlp select line, for 1989 color sheme only
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" to quiclky get to the ftp plugins
cmap FTP ~/.vim/ftplugin/<c-d>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)
"line numbers
set number
"tabs 
set expandtab
set tabstop=2
set shiftwidth=2

set list


let mapleader = "\<Space>"
nnoremap <leader>ev :vnew ~/.vimrc<cr>
nnoremap <leader>a :Ag<cr>
nnoremap <leader><leader> :update<cr>


"tabmovement
nnoremap tl :tabnext<cr>
nnoremap th :tabprev<cr>


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
" noremap <leader>cr :py3f ~/.scripts/clang-rename.py<cr>


"jupyter commands
let maplocalleader = ","


"ALE
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace']
  \ }
nnoremap <leader>f :ALEFix<cr>

nnoremap j gj
nnoremap k gk

"coc-nvim config
nmap <leader>rn  :call <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>



function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

set splitbelow
set splitright
set ignorecase "ignore case when searching
set smartcase "ignore case when searching, except if we start with a capital
