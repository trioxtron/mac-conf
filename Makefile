SHELL := /bin/bash

# put bundle at the top to make it the default command for make
bundle:
	brew bundle --file=Brewfile

cleanup:
	brew bundle --force cleanup --file=Brewfile

backup-configs:
	cp ~/.config/karabiner/karabiner.json .
	cp ~/Library/Preferences/com.googlecode.iterm2.plist .
	cp ~/Library/Preferences/com.knollsoft.Rectangle.plist .
	cp ~/.zshrc .
	cp ~/.tmux.conf .
	cp ~/Library/Preferences/com.ospfranco.sol.plist .

restore-configs:
	mkdir -p ~/.config/karabiner
	cp karabiner.json ~/.config/karabiner/karabiner.json
	cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
	cp com.knollsoft.Rectangle.plist ~/Library/Preferences/com.knollsoft.Rectangle.plist
	cp .zshrc ~/.zshrc
	cp .tmux.conf ~/.tmux.conf
	cp -r nvim ~/.config
	cp starship.toml ~/.config/starship.toml
	cp com.ospfranco.sol.plist ~/Library/Preferences/com.ospfranco.sol.plist

	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpmgit clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	curl -fsSL https://git.io/antigen -o ~/antigen.zsh

brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh -o install.sh
	chmod +x install.sh
	./install.sh
	rm install.sh

settings:
	./settings.sh
