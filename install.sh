#!/bin/bash

git clone https://github.com/fellipecastro/vim-ide.git ~/.vim-ide
mkdir -p ~/.vim-ide/vim/bundle
ln -snf ~/.vim-ide/vimrc ~/.vimrc
ln -snf ~/.vim-ide/vim ~/.vim
touch ~/.vimrc_extra
git clone --depth 1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
