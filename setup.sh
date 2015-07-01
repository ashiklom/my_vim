#!/bin/bash

# Initialize Vundle and install packages
nvim +PlugInstall

# Install R plugin dependencies
Rscript Rsetup.R
rm colorout_*
