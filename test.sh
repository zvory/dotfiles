#!/bin/bash
# bash aliases normally don't get expanded into scripts
shopt -s expand_aliases
source ~/.bash_profile
source ~/.bash_aliases
source ~/.bashrc


#testing aliases
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    bat_binary="bat-linux"
    exa_binary="exa-linux"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    bat_binary="bat-macos"
    exa_binary="exa-macos"
fi


string="$(alias ls)"
if [[ $string == *"$exa_binary"* ]]; then
  echo "okay: exa"
else
  echo "err: exa"
  exit 1
fi


string="$(alias cat)"
if [[ $string == *"$bat_binary"* ]]; then
  echo "okay: bat"
else
  echo "err: fzf"
  exit 1
fi


string="$(fzf --version)"
if [ $? -eq 0 ]
then
  echo "okay: fzf"
else
  echo "err: fzf"
  exit 1
fi

exit 0
