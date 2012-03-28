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
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


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

nnoremap <leader>q gqip
nnoremap <leader>c :nohl<cr>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <leader>tt :tabnew<cr>
map <leader>te :tabedit<cr>
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove<cr>

syntax on
set hlsearch
set t_Co=256
set guifont=Menlo:h14
set guioptions=-te
set linespace=1
colorscheme molokai
if has("gui_running")
    set transparency=4
endif

filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

function! g:ToggleNuMode() 
if(&rnu == 1) 
set nu 
else 
set rnu 
endif 
endfunc 
nnoremap <leader>n :call g:ToggleNuMode()<cr>

let g:neocomplcache_enable_at_startup = 1

au VimEnter * RainbowParenthesesToggleAll
au VimEnter * RainbowParenthesesToggle
noremap <leader><tab> :RainbowParenthesesToggle<cr>
