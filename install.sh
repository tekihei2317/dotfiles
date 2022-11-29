#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle --file=Brewfile

# gitの設定
git config --global user.email "tekihei2317@gmail.com"
git config --global user.name "tekihei2317"

# macの設定

# ボタンの長押しで連打できるようにする
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# 2文字目の入力が始まるまでの時間を短くする(default: 15)
defaults write -g InitialKeyRepeat -int 12

# キーリピートの間隔を短くする(default: 2)
defaults write -g KeyRepeat -int 1
