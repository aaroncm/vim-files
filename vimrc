set nocompatible
set backspace=indent,eol,start
set nobackup
set history=50
set showcmd
map Q gq

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set modelines=0

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set laststatus=2
set number
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%{SyntasticStatuslineFlag()}%-14.(%l,%c%V%)\ %P


let mapleader = ","

set list
set listchars=tab:▸\ ,eol:¬

"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap ; :
nnoremap <leader>a :Ack 

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

inoremap jj <ESC>
inoremap jk <ESC>

nnoremap <leader>q gqip
nnoremap <leader>n :nohl<cr>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>t :CtrlP<cr>

syntax on
set hlsearch
set t_Co=256
"set guifont=Menlo\ for\ Powerline:h14
set guifont=Source\ Code\ Pro:h13
let g:Powerline_symbols = 'fancy'
set guioptions=-te
set linespace=1
"colorscheme codeschool
colorscheme Tomorrow-Night
"if has("gui_running")
"    set transparency=2
"endif

" Bundle stuff / bindlestiff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" bundles go here

Bundle 'aaroncm/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-rooter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Shougo/neocomplcache'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'groenewege/vim-less'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'rosstimson/scala-vim-support'
Bundle 'kien/ctrlp.vim'
Bundle 'jeetsukumaran/vim-buffergator'

" okay, finished bundling
filetype plugin indent on

let g:neocomplcache_enable_at_startup = 1
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"let g:SuperTabDefaultCompletionType = "context"
"set completeopt=menuone,preview
set completeopt=menuone,longest
au FileType python set omnifunc=pythoncomplete#Complete

au VimEnter * RainbowParenthesesToggleAll
au VimEnter * RainbowParenthesesToggle
noremap <leader><tab> :RainbowParenthesesToggle<cr>

set wildignore=*.pyc,*.o,.git,.hg

if has('gui_running')
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    autocmd CursorMoved * if pumvisible() == 0|pclose|endif
    "autocmd vimenter * if !argc() | NERDTree | endif
endif

au BufNewFile,BufRead *.jinja set filetype=jinja

let g:SuperTabDefaultCompletionType = "<c-n>"

let g:syntastic_python_checker_args="--ignore=E501"
