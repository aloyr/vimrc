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

