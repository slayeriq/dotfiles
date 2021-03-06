set nocompatible
filetype off

set rtp+=~/vimfiles/bundle/vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scwood/vim-hybrid'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'wellsjo/wellsokai.vim'
Plugin 'tomasr/molokai'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/YouCompleteMe'
Plugin 'nanotech/jellybeans.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-scripts/buftabs'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'scrooloose/syntastic'
Plugin 'wkentaro/conque.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mileszs/ack.vim'
Plugin 'vim-rooter'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'tpope/vim-dispatch'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-gitgutter'
call vundle#end()

" General
filetype plugin indent on

" Indent
"let g:indentLine_char = '.'

" Autocommands
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

set t_Co=256
syntax on

set wildmenu
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set ignorecase
set relativenumber
set number
set laststatus=2
set nosol
"set colorcolumn=100
set hidden
set ruler
set showtabline=0
set encoding=utf-8
set guifont=Sauce_Code_Powerline:h8:cANSI:qDRAFT
set ssop-=options
set ssop-=folds
set splitright
set splitbelow
set nobackup 
set noswapfile


" Airline
let g:airline_powerline_fonts = 1
let g:ctrlp_show_hidden = 1
let g:Powerline_symbols='unicode'
let g:airline_extensions = ['branch', 'tabline']

set backspace=indent,eol,start

" Mappings
set langmenu=en_US
let $LANG = 'en_US'
let mapleader=','
let g:rooter_patterns = ['node_modules/']

nnoremap <A-Down> <C-W><C-J>
nnoremap <A-Up> <C-W><C-K>
nnoremap <A-Right> <C-W><C-L>
nnoremap <A-Left> <C-W><C-H>
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <C-A>v "*p
nnoremap <Leader>n :lnext<CR>
nnoremap <Leader>p :lprev<CR>
nnoremap <Leader>c :ccl <bar> lcl<CR>
nnoremap <ESC> :noh<CR><ESC>
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-j> :TagbarToggle<CR>
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>

" Formatting
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

set scrolloff=10

syntax on 
set background=dark

if &t_Co >= 256 || has("gui_running")
	colorscheme base16-tomorrow-night
endif

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

set encoding=utf-8   
set rop=type:directx,gamma:1.0,contrast:1.0,level:1,geom:0.3,renmode:5,taamode:1
au GUIEnter * simalt ~x

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint']
