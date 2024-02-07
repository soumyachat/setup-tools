
" Maintained by Soumyadeep
"  
set nocompatible              " be iMproved, required
filetype off    

"*** Vundle plugin manager ***
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'davidhalter/jedi-vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'  " NB: install ycm first
Plugin 'junegunn/fzf'  " install fzf with brew
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'scrooloose/nerdtree'

"Syntax checking
Plugin 'vim-syntastic/syntastic'

"PEP-8 checking
Plugin 'nvie/vim-flake8'  " install flake8 first
Plugin 'dense-analysis/ale'



call vundle#end()            " required




" automatically source vimrc after saving
autocmd! bufwritepost .vimrc source %


" set some stuff
syntax on
filetype indent plugin on
filetype plugin on
filetype indent on
set expandtab ts=4 sw=2 ai
set modeline
set tags=./tags;$HOME/ans;
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
set cursorline
set encoding=utf-8


" set backspace=indent,eol,start
" set autochdir

"Solarized Stuff
set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast = "high"
" let g:solarized_termcolors=256
"if !has("gui_running")
    "let g:solarized_termtrans=1
    "let g:solarized_termcolors=256
"endif
" colorscheme solarized

" Colorscheme OneDark
colorscheme onedark
syntax on
set number
highlight Normal ctermbg=None
highlight LineNr ctermfg=DarkGrey



" code folding
set foldmethod=indent   
set foldnestmax=2
set nofoldenable
set foldlevel=99

" Shortcuts
"nmap <C-t> :tabnew<CR>
noremap ;] :bnext<CR> 
noremap ;[ :bprevious<CR> 
nmap <C-k> :gciw
nmap <C-h> :nohl<CR>
"autocmd vimenter * NERDTree
map <C-a> :NERDTreeToggle<CR>
noremap :W :w
noremap tf :tabf 
noremap <Leader>vs :vsplit
noremap ss :split 
noremap tt :tags
noremap mi :set mouse=i<CR>
noremap ma :set mouse=a<CR>
"navigation
" To make navigation easier between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" search  (Needs silver surfer/ack installed)
noremap s  :Ack!<Space>
" file search (Needs FZF installed)
nnoremap <Leader>q :Files<CR>  

" buffers
noremap <Leader>d :bdelete
noremap <Leader>b :b<Space>
noremap <Leader>B :Buffers<CR>

" Enable folding with the spacebar
nnoremap <space> za


"nerd commenter
let g:NERDSpaceDelims = 1


" jedi-vim
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
" let g:jedi#use_splits_not_buffers = "right"


" vim-airline
" let airline_theme='powerlineish'
" let g:airline_solarized_bg='dark'
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif



"Python
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ set python_highlight_all=1
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/



"vim-gutter (git plugin)
set updatetime=100

" fzf (fuzzy completion)
set rtp+=~/.fzf
let g:fzf_action = {
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit'} 

let g:fzf_layout = { 'down': '~20%' }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"vim ag
if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column'
    " let g:ackprg = 'ag --vimgrep'
endif

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = '/home/schatterjee/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
