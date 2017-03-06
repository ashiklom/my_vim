" Core (neo)vim configuration
" Author: Alexey Shiklomanov

if has('nvim')
    let vimdir = '~/.config/nvim/'
else
    let vimdir = '~/.vim/'
endif

exec "source " . vimdir . "plugins.vim"
exec "source " . vimdir . "options.vim"
exec "source " . vimdir . "customfunctions.vim"
exec "source " . vimdir . "mappings.vim"
exec "source " . vimdir . "appearance.vim"
exec "source " .  vimdir . "vimwiki.settings.vim"
