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
