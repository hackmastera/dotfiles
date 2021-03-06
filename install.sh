#!/bin/bash

DOTFILES=${HOME}/dotfiles
DOTBU=${HOME}/dotbackup

mkdir ${DOTBU}

files=( "bashrc" "gitconfig" "gitignore" "tmux.conf" "vimrc" )

for f in "${files[@]}"
do
  mv ${HOME}/.$f ${DOTBU}/${f}.bak
  ln -s ${DOTFILES}/$f ${HOME}/.$f
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
