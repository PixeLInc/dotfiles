# Path to ZSH Install
export ZSH=/home/pixel/.oh-my-zsh

# theme to load
ZSH_THEME="robbyrussell"

# Plugins to load
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias vim=nvim

# set the term
export TERM=xterm-256color

# SSH-AGENT STUFF
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add
