set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>

:syntax on
set t_Co=256
set background=dark
set hlsearch
set nu
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
filetype on
:filetype plugin indent on
set ruler
set autoindent
set ignorecase
set incsearch
set nohlsearch
set number

au BufReadPost *.twig colorscheme koehler 
au BufReadPost *.css colorscheme slate 
au BufReadPost *.js colorscheme elflord 
au BufReadPost *.py colorscheme molokai
au BufReadPost *.html colorscheme monokai
au BufReadPost *.java colorscheme monokai
au BufReadPost *.php colorscheme two2tango
au BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile /etc/nginx/conf/* set ft=nginx

autocmd vimenter * NERDTree

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'elixir-lang/vim-elixir'

call plug#end()
