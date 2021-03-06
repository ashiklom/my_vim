" Title: Core (neo)vim configuration
" Author: Alexey Shiklomanov

if has('nvim')
    let vimdir = $HOME . '/.config/nvim/'
else
    let vimdir = $HOME . '/.vim/'
endif

exec "source " . vimdir . "plugins.vim"
exec "source " . vimdir . "options.vim"
exec "source " . vimdir . "wrap_functions.vim"
exec "source " . vimdir . "functions.vim"
exec "source " . vimdir . "mappings.vim"
exec "source " . vimdir . "appearance.vim"

exec "source " . vimdir . "fzf.vim"
exec "source " . vimdir . "remote.vim"
