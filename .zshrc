# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

# aliases
alias vi='vim'
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc; source ~/.zshrc'
alias so='source ~/.zshrc'
alias brake='bundle exec rake'
alias reset='reset; so'

# git aliases
alias 'gp!'='git push --force'
alias gup='git pull --rebase origin master'
alias fix='vim -O $(git diff --name-only)'

export cdf='ahsanint@cdf.toronto.edu'
alias sshcdf='ssh -Y $cdf'
alias mosh='mosh --server="LD_LIBRARY_PATH=~/mosh/lib LANG=C.UTF-8 ~/mosh/bin/mosh-server" $cdf'

export GEM=$HOME/.gem/ruby/2.3.1/gems

search() {
  args=("$@")
  grep -nr --color=always ${args} --exclude-dir='tmp' --exclude-dir='node_modules' --exclude-dir='log' --exclude-dir='.git' -I .
}

list() {
  search "$@" -l
}

# Base16 Shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# oh-my-zsh settings
export ZSH=/users/auniahsan/.oh-my-zsh
ZSH_THEME=miloshadzic
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh
