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
