# My (neo)vim setup
For almost all my editing needs, I use vim, a powerful, highly-customizable, and pretty much universally-available text editor. I use this repository to easily keep my vim setup, which includes vim packages, my vimrc, color schemes, and file-specific settings/plugins.

# Neovim?
Vim is old, and its reverse compatibility with ancient operating systems takes a toll on its performance and its extensibility. The [Neovim](neovim.io) project is a crowdsourced attempt to recode vim without all the bloat. Switching to Neovim will cost you almost nothing; I was able to migrate to Neovim absolutely seamlessly with my existing vim setup.

I recently changed around my folder structure to work with neovim, which only involves replacing every instance of `.vim` with `.nvim` (e.g. `.nvimrc`). If you prefer to stick to vim but want to use my setup, you'll have to manually swap out references to the `.nvim` folder in my code (there should only be a few--and eventually, I'd like to figure out how to redefine system variables to do this properly). One caveat, though: If you do decide to use neovim, you will need to tweak the Vundle installation...or fake it like I do and make a symbolic link to the `.nvim` directory that is called `.vim`. This is necessary because by default, Vundle installs in `~/.vim/bundle~`, even if it doesn't exist.

# Installation
Clone to your home directory (or wherever you want to have your vim setup, but $HOME is the default on most installations.

```
cd ~
git clone git@github.com:ashiklom/my_vim
mv my_vim .nvim
```

Create a simple `nvimrc` file that just sources the one I have in my folder.
```
echo "source ~/.nvim/vimrc" > .nvimrc
```

Install Vundle and all packages.
```
cd .nvim
./setup.sh
```

Optionally, if you're used to typing `vim` all the time but want to use neovim, add the following to your `.bashrc`.
```
alias vim=nvim
```

