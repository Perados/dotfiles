# History configuration
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

# Vim in zsh
bindkey -v

platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='mac'
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=green,bg=black,bold,underline"

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
#
### Virtualenvwrapper ###
export VIRTUALENVWRAPPER_PYTHON=/Users/diego/.pyenv/shims/python

if [[ "$platform" == 'mac' ]]; then
	source /opt/homebrew/bin/virtualenvwrapper.sh
	alias vim /usr/local/bin/vim
elif [[ "$platform" == 'linux' ]]; then
	source /usr/bin/virtualenvwrapper.sh
fi

export PATH=${PATH}:~/Android/Sdk/tools
export PATH=${PATH}:~/Android/Sdk/platform-tools


### Thi adds a fortune squirrel to startup. https://github.com/schacon/cowsay ###
fortune | cowsay -pn -f squirrel | lolcat

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Locale ###
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


### ssh autocompletion for mosh ###
compdef mosh=ssh

### Anaconda configuration ###
# added by Anaconda3 4.0.0 installer
#export PATH="//anaconda/bin:$PATH"

# added by Anaconda3 4.0.0 installer
#export PATH="/Users/diego/anaconda3/bin:$PATH"
#
#alias crontab="VIM_CRONTAB=true EDITOR=vim crontab"
#


### Spark ###
export PATH=$PATH:/usr/local/spark/bin
alias spark-shell-2.4.4='~/spark/spark-2.4.4-bin-hadoop2.7/bin/spark-shell'
alias spark-shell-2.4.2='~/spark/spark-2.4.2-bin-hadoop2.7/bin/spark-shell'

### NodeJS
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### Git
alias gl='git log --pretty=format:'\''%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s'\'' --date=short --decorate=full'

### pyenv
export PATH="/Users/diego.moracespedes/.pyenv/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Kubectl
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)


# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ptodo="vim ~/workspace/todo"
alias pnotes="vim ~/workspace/notes"
