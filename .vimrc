
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
Plugin 'rking/ag.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'

call vundle#end()            " required


set runtimepath^=~/.vim/bundle/ctrlp.vim


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
set autochdir
colorscheme gruvbox

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


" code folding
set foldmethod=indent   
set foldnestmax=1
set nofoldenable
set foldlevel=2

" Shortcuts
"nmap <C-t> :tabnew<CR>
noremap ;] :tabn<CR> 
noremap ;[ :tabp<CR> 
nmap <C-k> :gciw
nmap <C-h> :nohl<CR>
"autocmd vimenter * NERDTree
map <C-a> :NERDTreeToggle<CR>
noremap :W :w
noremap tf :tabf
noremap vs :vsplit
noremap hs :split
noremap tt :tags
noremap mi :set mouse=i<CR>
noremap ma :set mouse=a<CR>
noremap cpans<CR> :CtrlP ~/ans<CR>
noremap cpa2a<CR> :CtrlP ~/ans/a2a<CR>
noremap cpm<CR> :CtrlP ~/ans/web/lib/a<CR>
noremap cpf<CR> :CtrlP ~/ans/feed<CR>
inoremap jk <ESC>
"navigation
nnoremap <tab><tab> <C-W><C-W>


"nerd commenter
let g:NERDSpaceDelims = 1


" jedi-vim
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0


" vim-airline
let airline_theme='gruvbox'
" let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_powerline_fonts = 1


"CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
let g:ctrlp_user_command = ['.git/', 'git --git-dir=/home/schatterjee/ans/.git ls-files -oc --exclude-standard']


"NCL
au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim 


"Jemdoc
augroup filetypedetect
    au! BufNewFile,BufRead *.jemdoc setf jemdoc
augroup END


"vim-gutter (git plugin)
set updatetime=100
