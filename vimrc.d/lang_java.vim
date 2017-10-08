augroup Java
    autocmd!
    autocmd FileType java nnoremap <buffer> <leader>b :!javac %<cr>
    autocmd FileType java nnoremap <buffer> <leader>B :!javac *.java<cr>
    autocmd FileType java nnoremap <buffer> <leader>m :!java <c-r>=expand("%:t:r")<cr><cr>
    autocmd FileType java nnoremap <buffer> <leader>c I//<esc>
    autocmd FileType java vnoremap <buffer> <leader>c :normal gI//<esc>
augroup END

