" _   _         _ _   __
" \\ // *  _ _  || ) //^
"  \V/  | | | | ||\\ \\_
"

" line numbers
set number relativenumber

" tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set autoindent

" keybindings
inoremap jk <esc><backspace> " press j then k for esc
"nnoremap B ^      " move to begining of line
"nnoremap E $      " move to end of line
nnoremap gV '[V'] " highlight last inserted text

" Misc
set confirm       " if a command fails due to unsaved work confirm action
syntax enable     " enable syntax highlighting
set nowrap        " disable line wraping
set noruler       " disable ruler
set magic         " enable regex
set showcmd	      " show key presses
set splitbelow    " open horizontal splits below
set splitright    " open vertical spits to the right

" folding
"set foldenable                 " enable folding
"set foldmethod=indent          " fold by indent

" gvim settings
colorscheme desert
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L  "left scrollbar
set guifont=Consolas:h9:cANSI
set backspace=indent,eol,start " allow backspaceing of autoindent, line breaks, and outside insert

" pluggin manager (vim-plug)
" Install if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
	Plug 'chrisbra/unicode.vim'
	Plug 'ying17zi/vim-live-latex-preview.git'
call plug#end()
