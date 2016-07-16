platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='freebsd'
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"

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
plugins=(git)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

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
#

if [[ "$platform" == 'Darwin' ]]; then
	source /usr/local/bin/virtualenvwrapper.sh
elif [[ "$unamestr" == 'Linux' ]]; then
	source /usr/bin/virtualenvwrapper.sh
fi

alias keyboard='xmodmap ~/keyboard-config/.xmodmap'

export NVM_DIR="/home/diego/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH=${PATH}:~/Android/Sdk/tools
export PATH=${PATH}:~/Android/Sdk/platform-tools


fortune | cowsay -pn -f squirrel

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Locale ###
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

<<<<<<< HEAD
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

### Chauffeur-Privé environment variables ###
source $HOME/.cpenv

## Hotkeys for mac ##
bindkey "OD" backward-word
bindkey "OC" forward-word

## nvm ##
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
=======
### Chauffeur-Privé environment variables ###
source $HOME/.cpenv


### Config for Mac ###
if [[ "$platform" == 'Darwin' ]]; then
	## Hotkeys for mac ##
	bindkey "OD" backward-word
	bindkey "OC" forward-word

	## nvm ##
	export NVM_DIR="$HOME/.nvm"
	. "$(brew --prefix nvm)/nvm.sh"
fi
>>>>>>> 491e2e9b3a82a64324266eb3f6caab65539764ba
