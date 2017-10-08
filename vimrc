set fileencodings=utf-8
set encoding=utf-8
" pathogen - must come first ----------------------------------------------
call pathogen#infect()
call pathogen#helptags()

" process include files ----------------------------------------------------------------
for config_file in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
  exe 'source' config_file
endfor

" executing external commands ---------------------------------------------
" running make and jumping to errors --------------------------------------
" language specific -------------------------------------------------------
" various -----------------------------------------------------------------
" mappings ----------------------------------------------------------------
map <silent> <c-n> :NERDTreeFocus<cr>
inoremap jjj 
nnoremap \ ,
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader><leader> <c-^>
nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap Y y$
nnoremap & :&&<cr>
" experimental mappings------------
nnoremap <tab> >>
nnoremap <s-tab> <<
vnoremap <tab> >
vnoremap <s-tab> <
" abbreviations -----------------------------------------------------------
cnoreabbrev W w
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Q! q!
cnoreabbrev Tabe tabe
cnoreabbrev wrap set wrap
cnoreabbrev nowrap set nowrap
" functions ---------------------------------------------------------------
function! Fix_markdown_for_tut()
    %s/\(<h\d\) id=["'].+['"]>/\1>/
    "%s/<pre><code>/[js]/
    "%s/<\/code>\(<\/pre>\)/[\/js]/
    %s/<pre><code>/<pre class="" name="code">
    %s/<\/code>\(<\/pre>\)/\1/
    "%s/<p><img/<div class="tutorial_image"><img/
    %s/<p>\(<img.*\/>\)<\/p>/<div class="tutorial_image">\1<\/div>
endfunction

command! Fm call Fix_markdown_for_tut()

function! InsertTabWrapper()
    " MULTIPURPOSE TAB KEY
    " Indent if we're at the beginning of a line. Else, do completion.
    " via https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

function! OpenUrlUnderCursor()
    let url=matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')
    if url != ""
        silent exec "!open '".url."'" | redraw! 
    endif
endfunction
map <leader>o :call OpenUrlUnderCursor()<CR>
