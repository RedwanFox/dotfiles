set nocompatible

"======== Plugins setup =============
filetype off
set rtp+=~/.config/nvim/bundle/Vundle.vim

call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()            " required
"===================================


filetype plugin indent on    " required


" main setup
scriptencoding utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r

colorscheme desert
syntax on


set number "line number
set relativenumber "relative line numbers beside current
set numberwidth=4

set autoread

set confirm "confirm save on exit"

" traverse through very long lines (with multiple virtual wrapped lines)
" swiftly without skipping
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <expr> <Up> (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> <Down> (v:count == 0 ? 'gj' : 'j')


" Splitting.
set splitright " Open new vertical panes in the right rather than left.
set splitbelow " Open new horizontal panes in the bottom rather than top.

" Text search
set showmatch
set hlsearch
set incsearch
set ignorecase

"======= TABS AND SPACES =======
"" tabs for spaces
filetype plugin indent on
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set smarttab

" display trailing spaces and tabs
set listchars=tab:..,trail:·
set list
"
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
"===============================

set wildmenu
set showcmd

set autochdir " vim begins to change current dir according to current opened file.

"================== MAPPINGS LOCALISATION ===========
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
"==========================================
