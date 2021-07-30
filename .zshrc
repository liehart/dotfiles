# .zshrc

export ZSH="/home/liehart/.oh-my-zsh"

ZSH_THEME=""

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Loads Pure

fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit
prompt pure

# Loads NVM

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export PATH=/usr/local/gradle/bin:$PATH

export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}

