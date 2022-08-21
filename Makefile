install:
	chmod +x ./install.sh
	./install.sh
	@make update
update:
	ln -sf $(PWD)/.vimrc ~/.vimrc
	ln -sf $(PWD)/.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	ln -sf $(PWD)/zsh/functions.zsh ~/.zsh/functions.zsh
	ln -sf $(PWD)/.tmux.conf ~/.tmux.conf
	ln -sf $(PWD)/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
	ln -sf $(PWD)/starship.toml ~/.config/starship.toml
	ln -sf $(PWD)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
	ln -sf $(PWD)/.yabairc ~/.yabairc
	ln -sf $(PWD)/.skhdrc ~/.skhdrc
