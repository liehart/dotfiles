export ZSH="/Users/vriyas/.oh-my-zsh"

ZSH_THEME=""

# zsh plugins
plugins=(zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# load pure
autoload -U promptinit; promptinit
prompt pure

# node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# pyenv virts
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

export PATH="/usr/local/sbin:$PATH"

# airflow
export AIRFLOW_HOME=~/airflow

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vriyas/Projects/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/vriyas/Projects/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vriyas/Projects/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/vriyas/Projects/google-cloud-sdk/completion.zsh.inc'; fi
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias rm="echo For sake of your sanity, use the trashcan"
