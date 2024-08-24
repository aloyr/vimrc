" -------------------------------------------------------------------------
filetype plugin indent on
syntax on
let mapleader=","

let g:snipMate = { 'snippet_version' : 1 }

" Use silver_surfer
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" important ---------------------------------------------------------------
set nocompatible                                      "don't behave like Vi
" moving around, searching and patterns -----------------------------------
set incsearch                             "shows search matches as you type
set showmatch                                     "jump to matching bracket
set smartcase                                          "if caps, watch case
set ignorecase                               "if all lowercase, ignore case 
" tags --------------------------------------------------------------------
" displaying text ---------------------------------------------------------
set number
set norelativenumber 
set linebreak                                          "wraps between words
set scrolloff=1 
" syntax, highlighting and spelling ---------------------------------------
set hlsearch                                     "highlights search results
set background=light
set spell
" multiple windows --------------------------------------------------------
set hidden                               "allow to bg unsaved buffers, etc.
set laststatus=2                                   "always show status line
" multiple tab pages ------------------------------------------------------
" terminal ----------------------------------------------------------------
" using the mouse ---------------------------------------------------------
" printing ----------------------------------------------------------------
" messages and info -------------------------------------------------------
set showcmd                                       "show normal etc commands 
set ruler                                             "show cursor position
" selecting text ----------------------------------------------------------
" editing text ------------------------------------------------------------
set nrformats-=octal                  "0-prefixed numbers are still decimal
set nrformats+=alpha                  "include alpha chars
set backspace=indent,eol,start                          "proper backspacing
" tabs and indenting ------------------------------------------------------
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround                    "round > and < to multiples of shiftwidth
set list
set listchars=eol:¬,tab:▶·,trail:█,extends:▶,precedes:◀"
set cursorline
" folding -----------------------------------------------------------------
set foldmethod=marker
set foldmarker={{{,}}}
" diff mode ---------------------------------------------------------------
" mapping -----------------------------------------------------------------
set timeout                               "Fixes slow O inserts (all three)
set timeoutlen=1000
set ttimeoutlen=100
" command line editing ----------------------------------------------------
set wildmenu
set wildmode=full
" modeline
set modeline
