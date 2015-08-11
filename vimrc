set nocompatible
set nobackup

inoremap fd <ESC>

nnoremap <leader>t :Unite file_rec/async<cr>
nnoremap <leader>p :Unite file_rec/async<cr>
nnoremap <leader>b :Unite -no-start-insert buffer<cr>
nnoremap <leader>g :Unite grep:.<cr>

syntax on
set hlsearch
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
let g:airline_powerline_fonts=1
set guioptions=-ter
set linespace=1


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'Shougo/unite.vim'
Plug 'chriskempson/base16-vim'
Plug 'majutsushi/tagbar'

call plug#end()


set background=dark
colorscheme base16-ocean

" okay, finished bundling
filetype plugin indent on
