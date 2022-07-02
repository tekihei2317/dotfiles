# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(anyenv init -)"

alias ls='exa --time-style=long-iso -g'
alias ll='ls --git --time-style=long-iso -gl'
alias la='ls --git --time-style=long-iso -agl'
alias cat='bat'
alias dev='docker-compose -f docker-compose-dev.yml'
alias art='php artisan'
alias docom='docker-compose'
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias tf='terraform'

# git
alias gc="git add . && git commit -v"
alias cbranch="git rev-parse --abbrev-ref HEAD"
autoload -Uz compinit && compinit
__git_files () {
  _files
}

# compro
alias ojtp='oj t -c "php main.php"'
alias ojsp='oj s main.php'

alias ojtr='oj t -c "ruby main.rb"'
alias ojsr='oj s main.rb'

# make php snippet for vscode
alias mps='sed -e '\''s/\$/\\\\\$/g'\'' | sed -e '\''s/^/"/'\'' | sed -e '\''s/$/",/'\'''

export EDITOR=vim

# Ctrl+Pなどを押したとき^Pのようになったため
bindkey -e

# シェル関数
. ~/.zsh.d/functions.zsh

# python(for online-judge-tools)
export PATH="$PATH:/Users/gib0017/Library/Python/3.8/bin"

# timeコマンドの書式
TIMEFMT=$'\n========================\nProgram : %J\nCPU     : %P\nuser    : %*Us\nsystem  : %*Ss\ntotal   : %*Es\n========================\n'

# npm
export PATH="./node_modules/.bin:$PATH"

# composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# phpenv
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/bzip2/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/libiconv/bin:$PATH"
export PATH="/usr/local/opt/krb5/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/krb5/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/usr/local/opt/icu4c/lib/pkgconfig:$PKG_CONFIG_PATH"
export CPPFLAGS="-DU_DEFINE_FALSE_AND_TRUE=1"

# java
export PATH="/usr/local/opt/openjdk@11/bin:$PATH"


export GOPATH=$HOME/go

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
