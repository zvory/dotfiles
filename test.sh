#!/bin/bash
# bash aliases normally don't get expanded into scripts
shopt -s expand_aliases
source ~/.bash_profile
source ~/.bash_aliases
source ~/.bashrc

string="$(alias ls)"
if [[ $string == *"$exa_binary"* ]]; then
  echo "okay: exa alias"
else
  echo "err: exa alias"
  exit 1
fi
string="$(ls)"
if [ $? -eq 0 ]
then
  echo "okay: ls execution"
else
  echo "err: ls execution"
  exit 1
fi


string="$(alias cat)"
if [[ $string == *"$bat_binary"* ]]; then
  echo "okay: bat alias"
else
  echo "err: bat alais"
  exit 1
fi
string="$(cat /dev/null)"
if [ $? -eq 0 ]
then
  echo "okay: cat execution"
else
  echo "err: cat execution"
  exit 1
fi


#string="$(fzf --version)"
#if [ $? -eq 0 ]
#then
#  echo "okay: fzf"
#else
#  echo "err: fzf"
#  echo "$string"
#  exit 1
#fi
#
#exit 0
