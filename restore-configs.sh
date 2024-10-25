#!/bin/sh

[ ! -d ~/.tmux/plugins/tpm ] && git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

mkdir -p ~/.config/karabiner
cp karabiner.json ~/.config/karabiner/karabiner.json
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
cp com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist
cp .zshrc ~/.zshrc
cp .tmux.conf ~/.tmux.conf
cp -r nvim ~/.config
cp starship.toml ~/.config/starship.toml
cp com.ospfranco.sol.plist ~/Library/Preferences/com.ospfranco.sol.plist

curl -fsSL https://git.io/antigen -o ~/antigen.zsh
