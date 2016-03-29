set nocompatible
set nobackup

set shell=/bin/zsh

inoremap fd <ESC>

syntax on
set hlsearch
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h12
let g:airline_powerline_fonts=1
set guioptions=-ter
set linespace=1
set scrolloff=3

set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

set number
set relativenumber
" Absolute Line Numbers in Insert Mode
:au InsertEnter * :set number
:au InsertLeave * :set relativenumber


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'Shougo/unite.vim'
Plug 'chriskempson/base16-vim'
Plug 'w0ng/vim-hybrid'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim'

Plug 'scrooloose/syntastic'

Plug 'davidhalter/jedi-vim', {'for': 'python'}

Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'mattreduce/vim-mix', {'for': 'elixir'}

Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'racer-rust/vim-racer', {'for': 'rust'}

Plug 'fatih/vim-go', {'for': 'go'}
Plug 'garyburd/go-explorer', {'for': 'go'}

Plug 'jimenezrick/vimerl', {'for': 'erlang'}

Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}

Plug 'elmcast/elm-vim', {'for': 'elm'}

Plug 'dleonard0/pony-vim-syntax', {'for': 'pony'}

Plug 'lukerandall/haskellmode-vim', {'for': 'haskell'}
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}

Plug 'guns/vim-clojure-static', {'for': 'clojure'}
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'vim-scripts/paredit.vim', {'for': 'clojure'}

Plug 'pangloss/vim-javascript'

call plug#end()


set background=dark
colorscheme hybrid

""" okay, finished bundling
filetype plugin indent on


""" neocomplete
set completeopt=menuone
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
"inoremap <expr><Tab>  neocomplete#start_manual_complete()
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ neocomplete#start_manual_complete()
function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.go = '\h\w*\.\?'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1    



""" unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :Unite -start-insert file_rec/async<cr>
nnoremap <leader>p :Unite -start-insert file_rec/async<cr>
nnoremap <leader>b :Unite -no-start-insert buffer<cr>
nnoremap <leader>g :Unite grep:.<cr>

""" rust
let g:racer_cmd = "/Users/aaron/Devel/source-repos/racer/target/release/racer"
let $RUST_SRC_PATH="/Users/aaron/Devel/source-repos/rust/src/"
let g:rustfmt_autosave = 1

""" golang
let g:go_fmt_command = "goimports"

""" haskell
let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"
let g:haddock_docdir="/usr/local/share/doc/ghc/html/"
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

