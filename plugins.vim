call plug#begin(vimdir . 'bundle')

" Aesthetics
Plug 'bling/vim-airline'                  " Nice status bar for buffers
"Plug 'bling/vim-bufferline'
Plug 'ashiklom/vim-colorschemes'          " Big library of vim color schemes!

" Version control
Plug 'tpope/vim-fugitive'                 " Great Git program!
Plug 'airblade/vim-gitgutter'             " Display git changes in real time

" File management
Plug 'Shougo/denite.nvim'                 " Unifying interface for vim
Plug 'kien/ctrlp.vim'                     " Fuzzy file search (still much faster and smoother than denite)
Plug 'benekastah/neomake'                 " Asynchronous make through neovim
Plug 'scrooloose/nerdtree'                " File browser
Plug 'brooth/far.vim'                     " Find-replace across files
Plug 'vim-scripts/rename'                 " Rename current file

" Motion extensions
Plug 'tpope/vim-surround'                 " Easy surrounding
Plug 'tpope/vim-repeat'                   " For repeating advanced vim commands
Plug 'Lokaltog/vim-easymotion'            " Easier motions within files

" Formatting
Plug 'scrooloose/nerdcommenter'           " Easier commenting
Plug 'clarke/vim-renumber'                " Automatically renumber list
Plug 'ciaranm/detectindent'               " Automatically detect formatting (like vim-sleuth, but I can call it manually
Plug 'jiangmiao/auto-pairs'               " Automatically close quotes, parentheses, etc.
Plug 'junegunn/vim-easy-align'            " Easy align

" Full filetype plugins
Plug 'jalvesaq/Nvim-R'                    " Neovim R plugin
Plug 'vim-latex/vim-latex'                " LaTex
Plug 'vimwiki/vimwiki'                    " Vim Wiki - Awesome note-taking plugin!
Plug 'mattn/calendar-vim'                 " Powerful calendar inside vim
Plug 'chrisbra/csv.vim'                   " For working with CSV's
Plug 'vim-pandoc/vim-pandoc'
"Plug 'davidhalter/jedi-vim'              " Python autocompletion
"Plug 'ivanov/vim-ipython'
"Plug 'scrooloose/syntastic'              " Syntax checking

" Simple syntax highlighting
Plug 'tmux-plugins/vim-tmux'              " For tmux conf file
Plug 'maverickg/stan.vim'                 " For STAN model files
Plug 'pangloss/vim-javascript'
Plug 'exu/pgsql.vim'                      " PostgreSQL syntax highlighting
Plug 'bfredl/nvim-ipy'                    " IPython in Neovim
Plug 'vim-scripts/bbcode'
Plug 'vim-pandoc/vim-pandoc-syntax'
"Plug 'zorab47/vim-gams'                   " Gams syntax and formatting
"Plug 'plasticboy/vim-markdown'

" Other
Plug 'tpope/vim-obsession'                " Session management
Plug 'SirVer/ultisnips'                   " Snippets
Plug 'kshenoy/vim-signature'              " Display marks, and additional mark tools

call plug#end()

filetype plugin indent on
syntax enable
