" crontab handling --------------------------------------------------------
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" autocommands ------------------------------------------------------------
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
augroup vimscript
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

augroup Ruby
    autocmd!
    autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2
augroup END

augroup JavaScript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <leader>m :!node %<cr>
    autocmd FileType javascript nnoremap <buffer> <leader>c gI//<esc>
    autocmd FileType javascript vnoremap <buffer> <leader>c :normal gI//<esc>
augroup END

augroup Java
    autocmd!
    autocmd FileType java nnoremap <buffer> <leader>b :!javac %<cr>
    autocmd FileType java nnoremap <buffer> <leader>B :!javac *.java<cr>
    autocmd FileType java nnoremap <buffer> <leader>m :!java <c-r>=expand("%:t:r")<cr><cr>
    autocmd FileType java nnoremap <buffer> <leader>c I//<esc>
    autocmd FileType java vnoremap <buffer> <leader>c :normal gI//<esc>
augroup END

augroup CPP
    autocmd!
    autocmd FileType cpp nnoremap <buffer> <leader>b :!g++ %<cr>
    autocmd FileType cpp nnoremap <buffer> <leader>m :!./a.out<cr>
augroup END
