# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git shrink-path gpg-agent ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

HISTSIZE=500000
SAVEHIST=500000

# share between terms
setopt SHARE_HISTORY
# dont store things starting with space
setopt HIST_IGNORE_SPACE
# immediately append rather than wait till term exit
setopt INC_APPEND_HISTORY
# ignore CTRL+D from closing terminal
# setopt IGNORE_EOF

setopt HIST_IGNORE_DUPS       # Don't record if just happened
setopt HIST_IGNORE_ALL_DUPS   # Delete an old event if new one is duplicated
setopt HIST_FIND_NO_DUPS      # Don't display a previously found one
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate event before others when trimming

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
PATH="$HOME/.nimble/bin:$PATH"
export PATH

export TERM=xterm-256color
export EDITOR=nvim
alias vim=nvim
alias spcomp="/mnt/games/Servers/csgo_surf/csgo/addons/sourcemod/scripting/spcomp"

# . "$HOME/.cargo/env"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/.nimble/bin:$PATH"
PATH="$HOME/.luarocks/bin:$PATH"
PATH="/etc/eselect/wine/bin:$PATH"
PATH="$HOME/go/bin:$PATH"

# Load Z
. ~/.local/bin/z.sh


# ocaml
#[[ ! -r /home/pixel/.opam/opam-init/init.zsh ]] || source /home/pixel/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# prompt changing :)
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '[%b%u%c] '
zstyle ':vcs_info:git:*' actionformats '[%b|%a%u%c] '

zstyle :omz:plugins:keychain agents ssh,gpg
zstyle :omz:plugins:ssh-agent identities id_ed25519

setopt PROMPT_SUBST
PROMPT='%F{219}%n%F{white}@%F{177}%m %F{121}$(shrink_path -f) %F{117}${vcs_info_msg_0_}%f$ '


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pixel/.gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/home/pixel/.gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pixel/.gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/pixel/.gcloud/google-cloud-sdk/completion.zsh.inc'; fi
