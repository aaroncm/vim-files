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
set relativenumber
" Always show line numbers, but only in current window.
:au WinEnter * :setlocal relativenumber
:au WinLeave * :setlocal norelativenumber
" Absolute Line Numbers in Insert Mode
:au InsertEnter * :set number
:au InsertLeave * :set relativenumber

let mapleader = ","
let maplocalleader = "_"

set list
set listchars=tab:▸\ ,eol:¬

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

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

inoremap jj <ESC>
inoremap jk <ESC>

nnoremap <leader>q gqip
nnoremap <leader>n :nohl<cr>
nnoremap gb <C-^>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>t :Unite file_rec/async<cr>
nnoremap <leader>p :Unite file_rec/async<cr>
nnoremap <leader>b :Unite -no-start-insert buffer<cr>
nnoremap <leader>g :Unite grep:.<cr>

syntax on
set hlsearch
set t_Co=256
set guifont=Source\ Code\ Pro\ for\ Powerline:h13
let g:airline_powerline_fonts=1
set guioptions=-ter
set linespace=1
colorscheme Tomorrow-Night

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline#extensions#branch#symbol = '⭠ '
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" Bundle stuff / bindlestiff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" bundles go here

Bundle 'tpope/vim-commentary'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-rooter'
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
" Bundle 'bling/vim-bufferline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-ragtag'
Bundle 'derekwyatt/vim-scala'
Bundle 'kien/ctrlp.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'wting/rust.vim'
Bundle 'travitch/hasksyn'
Bundle 'gberenfield/sjl-slimv'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'Blackrush/vim-gocode'
Bundle 'airblade/vim-gitgutter'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'tomasr/molokai'
Bundle 'mhinz/vim-startify'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-markdown'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimproc.vim'
Bundle 'Shougo/neocomplete.vim'
Bundle 'eagletmt/neco-ghc'
Bundle 'lukerandall/haskellmode-vim'
Bundle 'chriskempson/base16-vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'rking/ag.vim'
Bundle 'majutsushi/tagbar'
Bundle 'timrobinson/fsharp-vim'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'marijnh/tern_for_vim'
Bundle 'godlygeek/tabular'
Bundle 'elzr/vim-json'
Bundle 'Chiel92/vim-autoformat'
Bundle 'gkz/vim-ls'
Bundle 'jimenezrick/vimerl'
Bundle 'vim-scripts/omlet.vim'
Bundle 'bitc/vim-hdevtools'
" Bundle 'davidhalter/jedi-vim'
Bundle 'hail2u/vim-css3-syntax'
" Bundle 'b4winckler/vim-objc'
" Bundle 'vim-scripts/javacomplete'
Bundle 'nosami/Omnisharp'
Bundle 'OrangeT/vim-csharp'
Bundle 'tpope/vim-dispatch'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'osyo-manga/vim-reunions'
Bundle 'osyo-manga/vim-marching'

" okay, finished bundling
filetype plugin indent on

set wildignore=*.pyc,*.o,.git,.hg

if has('gui_running')
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
    autocmd CursorMoved * if pumvisible() == 0|pclose|endif
    "autocmd vimenter * if !argc() | NERDTree | endif
endif

au BufNewFile,BufRead *.jinja set filetype=jinja
au BufNewFile,BufRead *.m set filetype=objc

let g:syntastic_python_flake8_args="--ignore=E501,C0103"
let g:syntastic_haskell_ghc_mod_args="-g -fno-warn-type-defaults"
let g:syntastic_haskell_hdevtools_args=g:syntastic_haskell_ghc_mod_args

let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1

let g:gitgutter_eager=0

let g:bufferline_rotate=1

au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nnoremap <leader>r :RainbowParenthesesToggle<cr>
let g:rbpt_colorpairs =  [['red', 'red3'],
            \ ['darkyellow', 'orangered3'],
            \ ['darkgreen', 'orange2'],
            \ ['blue', 'yellow3'],
            \ ['darkmagenta', 'olivedrab4'],
            \ ['red', 'green4'],
            \ ['darkyellow', 'paleturquoise3'],
            \ ['darkgreen', 'deepskyblue4'],
            \ ['blue', 'darkslateblue'],
            \ ['darkmagenta', 'darkviolet']]


call unite#filters#matcher_default#use(['matcher_fuzzy'])
let g:unite_enable_start_insert = 1
let g:unite_enable_short_source_names = 1
" Like ctrlp.vim settings.
let g:unite_enable_start_insert = 1
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_source_file_rec_max_cache_files = 10000
call unite#custom#source('file_mru,file_rec,file_rec/async,grepocate',
        \ 'max_candidates', 10000)
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup -S'
let g:unite_source_grep_recursive_opt = ''

let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

set completeopt-=preview

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ocaml = '[^. *\t]\.\w*\|\h\w*|#'
let g:neocomplete#force_omni_input_patterns.omlet = '[^. *\t]\.\w*\|\h\w*|#'
let g:neocomplete#force_omni_input_patterns.cs = '.*[^=\);]'

let g:jedi#popup_on_dot = 0

let g:gocode_gofmt_tabs=' -tabs=true'

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

noremap <C-f> :Autoformat<CR>
let g:formatprg_args_expr_javascript = '"-w 80 -j -f - -".(&expandtab ? "s ".&shiftwidth : "t")'
let g:formatprg_json = "jq"
let g:formatprg_args_json = "."
let g:formatprg_args_expr_c = '"--mode=c --style=linux --indent-namespaces -jOpcH".(&expandtab ? "s".&shiftwidth : "t")'
let g:formatprg_args_expr_cpp = '"--mode=c --style=linux --indent-namespaces -OjpcH".(&expandtab ? "s".&shiftwidth : "t")'
let g:formatprg_args_expr_java = '"--mode=java --style=java -jOpcH".(&expandtab ? "s".&shiftwidth : "t")'
let g:formatprg_args_expr_cs = '"--mode=cs --style=ansi --indent-namespaces -OjpcH".(&expandtab ? "s".&shiftwidth : "t")'

" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_c_checkers = ['gcc', 'oclint', 'cppcheck']
let g:syntastic_cs_checkers = ['syntax', 'issues']
autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
set updatetime=500
" set cmdheight=2


let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
let g:syntastic_ocaml_checkers = ['merlin']

let g:ocp_indent_vimfile = system("opam config var share")
let g:ocp_indent_vimfile = substitute(g:ocp_indent_vimfile, '[\r\n]*$', '', '')
let g:ocp_indent_vimfile = g:ocp_indent_vimfile . "/vim/syntax/ocp-indent.vim"
autocmd FileType ocaml exec ":source " . g:ocp_indent_vimfile
au FileType ocaml nnoremap <C-f> :call OcpIndentBuffer()<CR>
au FileType ocaml vnoremap <C-f> :call OcpIndentRange()<CR>

let g:vim_json_syntax_conceal = 0

let g:ycm_confirm_extra_conf = 0
let g:ycm_semantic_triggers = {
    \ 'omlet': ['.', '#'],
\ }

let g:EclimCompletionMethod = 'omnifunc'
