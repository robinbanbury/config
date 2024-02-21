# Lives in ~/.zshrc

# More available at http://www.tldp.org/LDP/abs/html/sample-bashrc.html

# Init jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Init liquidprompt
if [ -f ~/Applications/liquidprompt/liquidprompt ]; then
    [[ $- = *i* ]] && source ~/Applications/liquidprompt/liquidprompt
fi

setopt interactivecomments

#----------------
# iTerm2 movement - see https://medium.com/@jonnyhaynes/jump-forwards-backwards-and-delete-a-word-in-iterm2-on-mac-os-43821511f0a
#----------------
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

#---------------
# Common aliases
#---------------
# Prevent accidentally clobbering files:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias h='history'
alias history='fc -l -100'
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
alias gb='git branch --column'
alias gba='git branch --all'
alias gbb='better-branch.sh' # https://gist.github.com/schacon/e9e743dee2e92db9a464619b99e94eff
alias gbd='git branch --delete'
alias gbD='git branch --delete --force'
alias gbbad='git bisect bad'
alias gbgood='git bisect good'
alias gblame='git blame -w -C -C -C -L'  # git blame -w -C -C -C -L <firstLine>,<lastLine> <path/to/file>
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
alias gdn='git diff --name-status'
alias gds='git diff --staged'
alias gdw='git diff --word-diff'
alias ghistory='git log -L'  # git log -L :<methodName>:<path/to/file>
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
alias gsearch='git log --patch -S'  # git log --patch -S <regex> - search commits for a change that includes the regex pattern
alias gss='git status --short'
alias gst='git stash'
alias gstls='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
alias gswitch='git checkout -'
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

#-------------------
# Find text in files
#-------------------
alias findpoms='find . -name pom.xml'
alias findinpoms='find . -name pom.xml | xargs grep -H'

# findinfiles <filename> <pattern>
function findinfiles() {
    readonly filename=${1:?"Filename must be specified."}
    readonly pattern=${2:?"Search pattern must be specified"}
    find . -name $filename | xargs grep -H $pattern;
}

#---------------------------------------------------
# Stop backward-kill-word on directory delimiter (/)
#---------------------------------------------------
autoload -U select-word-style
select-word-style bash

#--------------
# Clang options
#--------------
alias clang++='clang++ -std=c++14 -stdlib=libc++ -Weverything -Wno-c++98-compat'

#-------------------------
# A fun crypto utility ;-)
#-------------------------
alias rot13="tr '[a-zA-Z]' '[n-za-mN-ZA-M]'"
