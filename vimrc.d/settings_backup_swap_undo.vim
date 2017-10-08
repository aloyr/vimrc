" reading and writing file ------------------------------------------------
set backup                                      "keep backup after o/w file
if &backupdir =~# '^\.,'
    let &backupdir = "~/.vim/lib/backup," . &backupdir
endif
" the swap file
" -------------------------------------------------------------------------
set swapfile
if &directory =~# '^\.,'
    let &directory = "~/.vim/lib/swap," . &directory
endif
set undofile
if &undodir =~# '^\.\%(,\|$\)'
    let &undodir = "~/.vim/lib/undo," . &undodir
endif

