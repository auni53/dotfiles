export EDITOR="vi -u /dev/null"
KEYTIMEOUT=1
setopt IGNORE_EOF

# alias
alias vi='vim'
alias vimrc='vi ~/.vimrc'
alias zshrc='vi ~/.zshrc; source ~/.zshrc'
alias so='source ~/.zshrc'
alias 'gp!'='git push --force'
alias dc='docker-compose'
alias node6='nvm run --silent 6.10'

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
