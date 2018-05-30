set nocompatible              " be iMproved, required
filetype off                  " required

" 参考 ==> https://realpython.com/vim-and-python-a-match-made-in-heaven/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" fold code;autoindent for python
Plugin 'tmhedberg/SimpylFold'
" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on

" highlight code
Plugin 'scrooloose/syntastic'

" tree
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Bundle 'gabrielelana/vim-markdown'Plugin 'junegunn/goyo.vim'
Plugin 'iamcco/markdown-preview.vim'

" git intergration
Plugin 'tpope/vim-fugitive'

" youcompleteme
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_python_binary_path = 'python'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" encoding
set encoding=utf-8

" split
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" autoindent

au BufNewFile,BufRead *.py,*.md
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set relativenumber
