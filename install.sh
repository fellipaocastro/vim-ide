#!/bin/bash
rm -rf ~/vim-ide

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo apt-get install exuberant-ctags vim vim-nox -y
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install ctags-exuberant
    brew install vim --with-lua --with-override-system-vi --without-python --with-python3
fi

git clone https://github.com/fellipecastro/vim-ide.git ~/vim-ide

mkdir -p ~/vim-ide/vim/bundle

ln -snf ~/vim-ide/.vimrc ~/.vimrc
ln -snf ~/vim-ide/vim ~/.vim

touch ~/.vimrc_extra

git clone --depth 1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qa

if [[ "$SHELL" == "/bin/zsh" ]]; then
    rehash
elif [[ "$SHELL" == "/bin/bash" ]]; then
    hash -r
fi
