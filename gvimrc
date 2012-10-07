" turns out this has to be in .gvimrc due to order of execution
if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CtrlPMixed<CR>
    map <D-p> :CtrlPMixed<CR>
endif

