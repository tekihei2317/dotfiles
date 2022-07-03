install:
	chmod +x ./install.sh
	./install.sh
	ln -sf $(PWD)/.vimrc ~/.vimrc
	ln -sf $(PWD)/.zshrc ~/.zshrc
	ln -sf $(PWD)/zsh ~/.zsh
	ln -sf $(PWD)/.tmux.conf ~/.tmux.conf
	ln -sf $(PWD)/nvim/init.vim ~/.config/nvim/init.vim
	ln -sf $(PWD)/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
	ln -sf $(PWD)/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
