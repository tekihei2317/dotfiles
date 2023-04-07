function pcode() {
  local repository=$(ghq list | peco)
  local directory="$(ghq root)/$repository"
  print -z "code $directory -r"
}

function pcd() {
  local repository=$(ghq list | peco)
  local directory="$(ghq root)/$repository"
  print -z "cd $directory"
}

function tm() {
  tmux new-session -A -s `basename $PWD`
}
