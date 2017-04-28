# alias
alias vi='vim'
alias muxup='tmux -CC'
alias mux='tmux -CC attach'
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc; source ~/.zshrc'
alias so='source ~/.zshrc'
alias rezip='rm index.js.zip; zip -r index.js.zip index.js'
alias 'gp!'='git push --force'
alias dc='docker-compose'

export cdf='ahsanint@cdf.toronto.edu'
alias mosh='mosh --server="LD_LIBRARY_PATH=~/mosh/lib LANG=C.UTF-8 ~/mosh/bin/mosh-server" $cdf'

# CSC410
alias mvn='/usr/local/apache-maven/bin/mvn'
alias jpf='/Users/Auni/Workspace/jpf-symbc/bin/jpf'

# brew
# export PATH='/usr/local/bin':$PATH

# alexa-transit
export NODE_PATH=$NODE_PATH:./src
alias pack='npm run build'
BASE='/Users/Auni/Workspace/ask-google'
alias try='$BASE/node_modules/.bin/mocha --compilers js:babel-core/register -r $BASE/tests/index.js --no-timeouts'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-chalk.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# BASE16_SHELL=$HOME/.config/base16-shell/base16-chalk.dark.sh
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# oh-my-zsh settings
export ZSH=/Users/Auni/.oh-my-zsh
ZSH_THEME=kardan
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

export NVM_DIR="/Users/Auni/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh
