#!/usr/bin/env bash

# create tmp folders
mkdir -p tmp/backup tmp/swap

# initialize git submodules
git submodule update --init

# create vimrc file
ln -s vimrc ~/.vimrc

echo Done.
