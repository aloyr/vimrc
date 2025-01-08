" mappings ----------------------------------------------------------------
" map <silent> <c-n> :NERDTreeFocus<cr>
map <silent> <c-n> :NERDTreeToggle<cr>
inoremap jjj 
nnoremap \ ,
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>m :NERDTreeMirror<cr>

" open NERDTree on start
autocmd VimEnter * NERDTree
" mirror NERDTree
autocmd BufEnter * NERDTreeMirror
" focus on NERDTree
autocmd VimEnter * wincmd w

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
" registers -------------------
let @s='gg:%s/^\n//gg/todayOkggjI0. gvgnjGkI0. gvggg:%s/^yesterday/`yesterday`/:%s/^today/`today`/:%s/` \:/`:/ggVG"*yy'

" pane resize
noremap <silent> <C-S-Right> :vertical resize -1<CR>
noremap <silent> <C-S-Left> :vertical resize +1<CR>
noremap <silent> <C-S-Up> :resize -1<CR>
noremap <silent> <C-S-Down> :resize +1<CR>

