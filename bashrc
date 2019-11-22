# Lives in ~/.bashrc
# Can also live in ~/.zshrc - add Liquidprompt setup from bash_profile too

# More available at http://www.tldp.org/LDP/abs/html/sample-bashrc.html

#---------------
# Common aliases
#---------------
# Prevent accidentally clobbering files:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias h='history'
#alias j='jobs -l'
#alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'

alias du='du -kh'      # Makes a more readable output.
alias du1='du -h -d 1' # Max-depth 1
alias df='df -kh'      # Add a 'T' for *nix to print file system type

#--------------
# Git shortcuts
#--------------
alias ga='git add'
alias gap='git add -p'
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbb='git bisect bad'
alias gbg='git bisect good'
alias gbr='git bisect reset'
alias gbrun='git bisect run'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gcln='git clean -d --dry-run'
alias gclnf='git clean -d --force'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcoall='git checkout -- .'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gds='git diff --staged'
alias gl='git log'
alias gll='git log --oneline --decorate --all --graph'
alias glp='git log --patch'
alias glr='git reflog'
alias gls='git log --stat'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpro='git pull --rebase origin' # requires final argument, e.g. 'gpr master'
alias gprune='echo "git fetch..." && git fetch && echo "git fetch --prune..." && echo "Branches deleted on remote:" && git fetch --prune 2>&1 | awk '\''/deleted/ {print $5}'\'' | awk -F \/ '\''{ if(NR > 1){printf(" \\\n")} {printf(" " $2)}} END {print ""}'\'''
alias gri='git rebase --interactive'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gstls='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias gurl='git remote get-url origin'
alias gurlx='git remote get-url'

function gsearch() { git log --all --grep="$1"; }

#----------------
# The 'ls' family
#----------------
alias lhr='ls -hG'           #  Use colour, and human-readable output
alias lsiz='ls -lSr'         #  Sort by size, biggest last. (common default is 'lk')
alias ldat='ls -ltr'         #  Sort by date, most recent last. (lt)
alias lchg='ls -ltcr'        #  Sort by/show change time,most recent last. (lc)
alias lacc='ls -ltur'        #  Sort by/show access time,most recent last. (lu)

alias ll='ls -l'             #  Long-list files
alias lr='ll -R'             #  Recursive
alias la='ls -aF'            #  Add suffixes for directories, executables and symlinks

#--------------
# Clang options
#--------------
alias clang++='clang++ -std=c++14 -stdlib=libc++ -Weverything -Wno-c++98-compat'

#-------------------------
# A fun crypto utility ;-)
#-------------------------
alias rot13="tr '[a-zA-Z]' '[n-za-mN-ZA-M]'"
