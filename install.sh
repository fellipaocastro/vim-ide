#!/bin/bash

git clone https://github.com/fellipecastro/vim-ide.git ~/.vim-ide -f
mkdir -p ~/.vim-ide/vim/bundle -f
ln -snf ~/.vim-ide/vimrc ~/.vimrc
ln -snf ~/.vim-ide/vim ~/.vim

git clone --depth 1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim -f
vim +PluginInstall +qall
