setopt IGNORE_EOF
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
# alias lab='ssh -X auni@zeus.dgp.toronto.edu -t "ssh -X auni@gbarill.abyss.dgp.sandbox -t \"tmux attach\""'
# alias labc='ssh -X auni@zeus.dgp.toronto.edu -t "ssh -X auni@gbarill.abyss.dgp.sandbox"'

azurehostold='class_test@52.179.97.177'
azurehost='auni@52.173.76.6'
alias azure='ssh $azurehost'
#  pw: CSC2604_test

alias newcmake='(mkdir build && cd build && cmake ../ && make -j8)'

search() {
  args=("$@")
  grep -nr --color=always ${args} --exclude-dir='tmp' --exclude-dir='node_modules' --exclude-dir='log' --exclude-dir='.git' -I .
}

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# oh-my-zsh settings
export ZSH=/Users/Auni/.oh-my-zsh
ZSH_THEME=kardan
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# brew
export PATH="/usr/local/bin:$PATH"
export GNUTERM=x11

# export zeus="auni@zeus@dgp.toronto.edu"
# export sandbox="gbarill.abyss.dgp.sandbox"
# export HOMEBREW_GITHUB_API_TOKEN="fad576b0aeffb2f5bdc9d02688c86dd18ebbb1c4"
# export CXX=/usr/local/opt/llvm/bin/clang++
# export PATH="/usr/local/opt/llvm/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

