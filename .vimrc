set nocompatible              " be iMproved, required
filetype off                  " required

" 参考 ==> https://realpython.com/vim-and-python-a-match-made-in-heaven/

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"dracula theme
"https://draculatheme.com/vim/
"https://github.com/dracula/vim
"move the dracula.vim file into ~/.vim/colors and add the following lines into your vimrc file
":help dracula
Plugin 'dracula/vim'
syntax on
color dracula
let g:airline_theme='dracula'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" air-line
" "https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

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
"Plugin 'scrooloose/nerdtree'
"let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" markdown
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"Bundle 'gabrielelana/vim-markdown'
"Plugin 'junegunn/goyo.vim'
"Plugin 'iamcco/markdown-preview.vim'

"graphviz
"Plugin 'wannesm/wmgraphviz.vim'

" git intergration
Plugin 'tpope/vim-fugitive'

" youcompleteme
"Bundle 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"let g:ycm_python_binary_path = '/usr/bin/python'
"let g:ycm_python_binary_path = 'python'



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

au BufNewFile,BufRead *.py,*.md,*.dot
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
set nu

" map the keys 'jk' to the escape key to improve efficiency.
imap jk <Esc>
