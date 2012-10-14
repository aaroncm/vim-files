" turns out this has to be in .gvimrc due to order of execution
if has("gui_macvim")
    macmenu &File.Print key=<nop>
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CtrlP<CR>
    map <D-p> :CtrlP<CR>
    map <D-/> <Plug>NERDCommenterToggle<CR>
    map <D-[> <<
    map <D-]> >>
endif

