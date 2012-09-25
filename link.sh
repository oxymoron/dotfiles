#!/bin/sh
VUNDLE_DIR="~/.vim/bundle/vundle"
if [ ! -d "$VUNDLE_DIR" ]; then
	git clone https://github.com/gmarik/vundle.git $VUNDLE_DIR
fi
ln -sf $PWD/vimrc ~/.vimrc
