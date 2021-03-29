:map ^P !}fmt^M
:map ^C !}sed 's/^/\#/'^M
:map ^B !}sed 's/^\#//'^M

set tabstop=4
set shiftwidth=4
set expandtab
set wrap

syntax on
set hlsearch

autocmd Filetype gitcommit setlocal spell textwidth=72

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Workaround for Mac VIM issue
"  Error detected while processing /usr/share/vim/vim82/syntax/groovy.vim:
"  line  256: E945: Range too large in character class
" See https://github.com/vim/vim/issues/7280
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set re=0
