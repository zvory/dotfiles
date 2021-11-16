function_exists() {
  command -v $1 > /dev/null
  return $?
}

# Some shells (such as zsh) do not have a `complete` keyword, so we need
# to make sure that `complete` exists as a shell built-in before calling it,
# or alternate shell users will get errors.
function_exists complete && complete -cf sudo

### BEGIN STRIPE
source ~/.stripe_profile
### END STRIPE

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

#### BEGIN AZ MODIFICATIONS
# ~/.bash_profile: executed by bash(1) for login shells.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/login.defs
#umask 022

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# set PATH so it includes user's private bin if it exists
if [ -d ~/.bin ] ; then
    PATH=~/.bin:"${PATH}"
fi
