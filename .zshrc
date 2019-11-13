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

export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
export PATH="/home/pixel/.gem/ruby/2.6.0/bin:$PATH"

# Bakkes mod
alias bakkes='env WINEPREFIX="/mnt/games/SteamLibrary/steamapps/compatdata/252950/pfx" WINEESYNC=1 /home/pixel/.steam/steam/steamapps/common/Proton\ 4.2/dist/bin/wine64 BakkesMod.exe'

# SSH-AGENT STUFF
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval `ssh-agent`
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add
