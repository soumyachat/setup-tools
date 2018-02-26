" .vimrc file
" Maintained by Soumyadeep
"  
set nocompatible              " be iMproved, required
filetype off    

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'https://github.com/davidhalter/jedi-vim.git'
" All of your Plugins must be added before the following line
"call vundle#end()            " required


autocmd! bufwritepost .vimrc source %

syntax on
filetype indent plugin on
filetype plugin on
filetype indent on
set expandtab ts=4 sw=1 ai
set modeline
set tags=./tags;$HOME/ans;

"Solarized Stuff
set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
let g:solarized_termcolors=256
"if !has("gui_running")
    "let g:solarized_termtrans=1
    "let g:solarized_termcolors=256
"endif
colorscheme solarized

set number
set autowrite
set ruler
set smartindent
set autoindent
set laststatus=2
set hlsearch
set is " incremental search
set mouse=a
set clipboard=unnamed
set guicursor=i:blinkwait700-blinkon400-blinkoff250
set ignorecase smartcase "ignore case while searching

"Shortcuts
"nmap <C-t> :tabnew<CR>
nmap [ :tabn<CR> 
nmap ] :tabp<CR> 
nmap <C-k> :gciw
nmap <C-h> :nohl<CR>
"autocmd vimenter * NERDTree
map <C-a> :NERDTreeToggle<CR>
noremap :W :w
noremap :WQ :wq
noremap :Wq :wq
noremap tf :tabf
noremap vs :vsplit
noremap hs :hsplit
noremap tt :tags

"nerd commenter
let g:NERDSpaceDelims = 1


"NCL
au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim 

"Jemdoc
augroup filetypedetect
    au! BufNewFile,BufRead *.jemdoc setf jemdoc
augroup END




