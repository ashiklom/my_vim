" File management
Plug 'tpope/vim-fugitive'                 " Great Git program!
Plug 'kien/ctrlp.vim'                     " Fuzzy file matching
Plug 'scrooloose/nerdtree'                " File browser
Plug 'bling/vim-airline'                  " Nice status bar for buffers
Plug 'jeetsukumaran/vim-buffergator'      " Buffer management
Plug 'danro/rename.vim'                   " Rename current file
Plug 'benekastah/neomake'

" Formatting
Plug 'godlygeek/tabular'                  " Another alignment package; Required by vim-markdown
Plug 'tpope/vim-surround'                 " Easy surrounding
Plug 'scrooloose/nerdcommenter'           " Easier commenting
Plug 'clarke/vim-renumber'                " Automatically renumber list
Plug 'ashiklom/vimoutliner'

" Filetype-specific
Plug 'davidhalter/jedi-vim'               " Python autocompletion
Plug 'zorab47/vim-gams'                   " Gams syntax and formatting
Plug 'vim-latex/vim-latex'                " LaTex
Plug 'vimwiki/vimwiki'                    " Vim Wiki - Awesome note-taking plugin!
Plug 'chrisbra/csv.vim'                   " For working with CSV's
Plug 'tmux-plugins/vim-tmux'              " For tmux conf file
"Plug 'scrooloose/syntastic'              " Syntax checking

" Other
Plug 'Lokaltog/vim-easymotion'            " Easier motions within files
"Plug 'christoomey/vim-tmux-navigator'    " Easy tmux navigation

" Color schemes
Plug 'flazz/vim-colorschemes'             " Big library of vim color schemes!

" Vim / neovim
if has('nvim')
    Plug 'jalvesaq/Nvim-R'                    " Neovim R plugin
else
    Plug 'vim-scripts/Vim-R-plugin'
end
