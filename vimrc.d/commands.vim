" crontab handling --------------------------------------------------------
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" autocommands ------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

