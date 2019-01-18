exa_binary="unknown"
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    exa_binary="exa-linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    exa_binary="exa-macos"
fi

alias exa="${exa_binary}"
alias l="${exa_binary} -h"
alias ls="${exa_binary} -h"
alias la="${exa_binary} -ah"
alias ll="${exa_binary} -lh"
alias df="df -h"

alias cd..="cd .."
alias ~="cd ~"
alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias chmoud="chmod"
alias se="ssh -Y azvorygi@linux.student.cs.uwaterloo.ca"
alias sshcsc="ssh azvorygi@hfcs.csclub.uwaterloo.ca"

# Git Aliases
alias gd="git diff"
alias gdc="git diff --cached"
alias gcl='git clone'
alias ga='git add'
alias gall='git add .'
alias g='git'
alias gs='git status'
alias gss='git status -s'
alias gl='git pull'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit --amend'
alias gcm='git commit -v -m'
alias gb='git branch'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"



# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias mkdir="mkdir -p"

# bat
alias cat='bat'
