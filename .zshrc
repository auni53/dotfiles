# alias
alias vi='vim'
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc; source ~/.zshrc'
alias so='source ~/.zshrc'
alias 'gp!'='git push --force'
alias dc='docker-compose'
alias node6='nvm run --silent 6.10'

export cdf='ahsanint@cdf.toronto.edu'
alias mosh='mosh --server="LD_LIBRARY_PATH=~/mosh/lib LANG=C.UTF-8 ~/mosh/bin/mosh-server" $cdf'

search() {
  args=("$@")
  grep -nr --color=always ${args} --exclude-dir='tmp' --exclude-dir='node_modules' --exclude-dir='log' --exclude-dir='.git' -I .
}

detar() {
  args=("$1")
  gunzip -c ${args} | tar xopf - && rm ${args}
}

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# oh-my-zsh settings
export ZSH=/Users/Auni/.oh-my-zsh
ZSH_THEME=kardan
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# nvm
export NODE_PATH=$NODE_PATH:./src
export NVM_DIR="/Users/Auni/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# brew
export PATH="/usr/local/bin:$PATH"
export GNUTERM=x11

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export zeus="auni@zeus@dgp.toronto.edu"
export sandbox="gbarill.abyss.dgp.sandbox"
