augroup CPP
    autocmd!
    autocmd FileType cpp nnoremap <buffer> <leader>b :!g++ %<cr>
    autocmd FileType cpp nnoremap <buffer> <leader>m :!./a.out<cr>
augroup END

