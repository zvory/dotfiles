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

alias r="python ${dotfiles_bin}/ranger/ranger.py"

alias cd..="cd .."
alias chmoud="chmod"
alias se="ssh -Y azvorygi@linux.student.cs.uwaterloo.ca"
alias sshcsc="ssh azvorygi@hfcs.csclub.uwaterloo.ca"

alias cloud="ssh -i ~/.ssh/csc-cloud-key.pem ubuntu@172.19.134.63"

alias gs="git status"
alias ga="git add"
alias gcm="git commit -m"
alias gl="git log"
alias gd="git diff"
alias glp='git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --date=short'
