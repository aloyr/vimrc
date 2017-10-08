augroup JavaScript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <leader>m :!node %<cr>
    autocmd FileType javascript nnoremap <buffer> <leader>c gI//<esc>
    autocmd FileType javascript vnoremap <buffer> <leader>c :normal gI//<esc>
augroup END

