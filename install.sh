#!/bin/bash
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sudo apt-get install exuberant-ctags vim vim-nox -y
elif [[ "$OSTYPE" == "darwin"* ]]; then
  brew install ctags-exuberant vim --with-lua --override-system-vi
fi
git clone https://github.com/fellipecastro/vim-ide.git ~/.vim-ide
mkdir -p ~/.vim-ide/.vim/bundle
ln -snf ~/.vim-ide/.vimrc ~/.vimrc
ln -snf ~/.vim-ide/.vim ~/.vim
touch ~/.vimrc_extra
git clone --depth 1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
if [ -n "$ZSH_VERSION" ]; then
  rehash
elif [ -n "$BASH_VERSION" ]; then
  hash -r
fi
