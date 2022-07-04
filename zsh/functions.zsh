function pcode() {
  local repository=$(ghq list | peco)
  local directory="$(ghq root)/$repository"
  print -z "code $directory -r"
}

function tm() {
  tmux new-session -s `basename $PWD`
}
