complete -cf sudo

### BEGIN STRIPE
source ~/.stripe_profile
### END STRIPE

### BEGIN HENSON
export PATH="/Users/az/stripe/henson/bin:$PATH"
### END HENSON

### BEGIN RBENV
export PATH="/Users/az/.rbenv/shims:$PATH"
export PATH="/Users/az/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
### END RBENV

### BEGIN PASSWORD VAULT
export PATH="/Users/az/stripe/password-vault/bin:$PATH"
### END PASSWORD VAULT

### BEGIN SPACE COMMANDER
export PATH="/Users/az/stripe/space-commander/bin:$PATH"
### END SPACE COMMANDER
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


### az modifications
source ~/dotfiles/az_bash_profile
export GOPATH="$HOME/stripe/go"
# (optional) This allows you to `go install` software onto your PATH
export PATH="$GOPATH/bin:$PATH"

source ~/stripe/space-commander/bin/sc-aliases

export TRAININGBOX=i-01af33a45c052cb8c.trainingbox.northwest.prod.stripe.io
