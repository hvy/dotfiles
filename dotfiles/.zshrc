if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile;
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/hiroyuki/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="bira"
#ZSH_THEME="juanghurtado"
# ZSH_THEME = "kennethreitz"
# ZSH_THEME="nanotech"
# ZSH_THEME=""
# ZSH_THEME=robbyrussell

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git wd)

# User configuration

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Example how to e.g. call ls each time you do a cd
# function cd() {
#   builtin cd "$@" && ls -l;
# }


if [ -f /Users/hiroyuki/hvy/dev/dotfiles/.spaceshiprc ]; then
  . /Users/hiroyuki/hvy/dev/dotfiles/.spaceshiprc
fi


# omit "cd"
setopt auto_cd

# "cd -" and then tab to show cd history
setopt auto_pushd

# suggest corrections on erroneous inputs
# setopt correct

# ctrl+p, ctrl+n to complete with history
# bindkey "^[[5~" history-beginning-search-backward
# bindkey "^[[6~" history-beginning-search-forward
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

. /Users/hiroyuki/torch/install/bin/torch-activate

source "/Users/hiroyuki/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

# Vim binding in cli
# set -o vi

export PATH="$HOME/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# cuDNN
export CUDA_ROOT="$HOME/.cudnn/active/cuda"
export CFLAGS="-I$CUDA_ROOT/include $CFLAGS"
export LDFLAGS="-L$CUDA_ROOT/lib64 $LDFLAGS"
export LIBRARY_PATH="$CUDA_ROOT/lib64:$LIBRARY_PATH"
export LD_LIBRARY_PATH="$CUDA_ROOT/lib64:$LD_LIBRARY_PATH"

# CUDA
export CUDA_HOME="/usr/local/cuda"
export PATH="$CUDA_HOME/bin:$PATH"
export LD_LIBRARY_PATH="$CUDA_HOME/lib64:$LD_LIBRARY_PATH"
export CUDA_DEVICE_ORDER=PCI_BUS_ID
# export CPATH="$CUDA_ROOT/include:$CPATH"

# NCCL
# export CPATH="$HOME/nccl/install/include:$CPATH"
# export LD_LIBRARY_PATH="$HOME/nccl/install/lib:$LD_LIBRARY_PATH"

export MPLBACKEND=AGG
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

alias v='vim'
alias git='hub'

