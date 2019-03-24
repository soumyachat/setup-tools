
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
Plugin 'morhetz/gruvbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'

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
" set backspace=indent,eol,start
" set autochdir
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
set foldnestmax=2
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
noremap ss :split 
noremap tt :tags
noremap mi :set mouse=i<CR>
noremap ma :set mouse=a<CR>
noremap cpans<CR> :FZF ~/ans<CR>
noremap cpa2a<CR> :FZF ~/ans/a2a<CR>
noremap cpm<CR> :FZF ~/ans/web/lib/a<CR>
noremap cpf<CR> :FZF ~/ans/feed<CR>
noremap f :FZF<CR>
"navigation
" nnoremap <tab><tab> <C-W><C-W>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
" search
noremap ;s  :Ack!<Space>


"nerd commenter
let g:NERDSpaceDelims = 1


" jedi-vim
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#use_splits_not_buffers = "right"


" vim-airline
let airline_theme='powerlineish'
" let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_powerline_fonts = 1



"NCL
au BufRead,BufNewFile *.ncl set filetype=ncl
au! Syntax newlang source $VIM/ncl.vim 


"Jemdoc
augroup filetypedetect
    au! BufNewFile,BufRead *.jemdoc setf jemdoc
augroup END


"vim-gutter (git plugin)
set updatetime=100

" fzf (fuzzy completion)
set rtp+=~/.fzf
let g:fzf_action = {
  \ 'return': 'tab split',
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
