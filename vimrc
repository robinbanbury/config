:map ^P !}fmt^M
:map ^C !}sed 's/^/\#/'^M
:map ^B !}sed 's/^\#//'^M

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
" set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Commit messages: see https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
autocmd Filetype gitcommit setlocal spell textwidth=72

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Workaround for Mac VIM issue
"  Error detected while processing /usr/share/vim/vim82/syntax/groovy.vim:
"  line  256: E945: Range too large in character class
" See https://github.com/vim/vim/issues/7280
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set re=0
