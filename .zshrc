# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(anyenv init -)"

# エイリアス
alias ls='exa --time-style=long-iso -g'
alias ll='ls --git --time-style=long-iso -gl'
alias la='ls --git --time-style=long-iso -agl'
alias cat='bat'
alias art='php artisan'
alias docom='docker compose'
alias tf='terraform'

# git
alias gc="git add . && git commit -v"
alias cbranch="git rev-parse --abbrev-ref HEAD"
autoload -Uz compinit && compinit
__git_files () {
  _files
}

# エディタ
export EDITOR=vim

# Ctrl+Pなどを押したとき^Pのようになったため
bindkey -e

# npm
export PATH="./node_modules/.bin:$PATH"

# composer
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"

# シェル関数
. ~/.zsh/functions.zsh
