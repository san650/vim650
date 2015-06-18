#!/usr/bin/env bash

# create tmp folders
mkdir -p tmp/backup tmp/swap

# initialize git submodules
git submodule init
git submodule update

# create vimrc file
ln -s vimrc ~/.vimrc

echo Done.
