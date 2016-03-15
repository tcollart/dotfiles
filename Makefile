.PHONY: all zsh vim dotfiles terminator

OS = `uname`

ifeq "$(OS)" "Linux"
all: zsh vim dotfiles terminator
else
all: zsh vim dotfiles
endif

zsh:
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

vim:
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
		curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	cd ~/.vim/bundle
	git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/
	git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/
	git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/
	git clone https://github.com/bling/vim-airline ~/.vim/bundle/
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/
	git clone https://github.com/morhetz/gruvbox ~/.vim/bundle/
	git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/
	git clone https://github.com/mxw/vim-jsx ~/.vim/bundle/
	git clone https://github.com/klen/python-mode ~/.vim/bundle/
	cd -

dotfiles:
	ln -s ./.vimrc ~/.vimrc
	ln -s ./.zshrc ~/.zshrc
	source ~/.zshrc

terminator:
	cp ~/.config/terminator/config ~/.config/terminator/config.old
	cp -r .config/terminator/config ~/.config/terminator/config
