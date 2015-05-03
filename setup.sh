#!/bin/bash

# Initialize Vundle and install packages
git clone git@github.com:gmarik/Vundle.vim.git bundle/Vundle.vim
vim +PluginInstall +qall

# Install R plugin dependencies
Rscript Rsetup.R
rm colorout_*
