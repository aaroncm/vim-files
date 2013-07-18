" turns out this has to be in .gvimrc due to order of execution
if has("gui_macvim")
    macmenu &File.Print key=<nop>
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CtrlP<CR>
    map <D-p> :CtrlP<CR>
    nmap <D-/> gcc
    vmap <D-/> gc
    map <D-[> <<
    map <D-]> >>
endif

