set background=dark
colorscheme base16-tomorrow

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_fugitive_prefix = ' '
let g:airline_readonly_symbol = ''
let g:airline_linecolumn_prefix = ' '

" turns out this has to be in .gvimrc due to order of execution
if has("gui_macvim")
    macmenu &File.Print key=<nop>
    macmenu &File.New\ Tab key=<nop>
    macmenu &Tools.Make key=<nop>
    " map <D-t> :CtrlP<CR>
    " map <D-p> :CtrlP<CR>
    map <D-t> :Unite file_rec/async<CR>
    map <D-p> :Unite file_rec/async<CR>
    map <D-b> <leader>b
    nmap <D-/> gccj
    vmap <D-/> gc
    map <D-[> <<
    map <D-]> >>
endif

