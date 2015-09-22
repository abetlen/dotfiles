#!/bin/bash

dir=~/dotfiles
olddir=$dir/old

files=".tmux.conf .vimrc .vim"

mkdir -p $olddir

for file in $files; do
    mv ~/$file $olddir
    ln -s $dir/$file ~/$file
done
