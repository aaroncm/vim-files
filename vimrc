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

colorscheme base16-ocean

" Bundle stuff / bindlestiff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" bundles go here

Bundle 'tpope/vim-sensible'
Bundle 'Shougo/unite.vim'
Bundle 'chriskempson/base16-vim'
Bundle 'majutsushi/tagbar'

" okay, finished bundling
filetype plugin indent on
