augroup HTML
    autocmd!
    autocmd BufRead,BufWritePre *.html :normal gg=G
    autocmd FileType html nnoremap <buffer> <leader>c I<!--<esc>A--><esc>
augroup END

