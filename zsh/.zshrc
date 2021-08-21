export ZSH="/Users/vriyas/.oh-my-zsh"

ZSH_THEME=""

# zsh plugins
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# load pure
autoload -U promptinit; promptinit
prompt pure

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# pyenv virts
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
