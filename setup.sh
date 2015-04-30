#!/bin/bash
# Initialize Vundle
git clone git@github.com:gmarik/Vundle.vim.git bundle/Vundle.vim
vim +PluginInstall +qall

# Compile Command-t
cd bundle/command-t/ruby/command-t
ruby extconf.rb
make
