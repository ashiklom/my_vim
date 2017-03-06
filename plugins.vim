call plug#begin(vimdir . 'bundle')

" File management
Plug 'tpope/vim-fugitive'                 " Great Git program!
Plug 'kien/ctrlp.vim'                     " Fuzzy file matching
Plug 'scrooloose/nerdtree'                " File browser
Plug 'bling/vim-airline'                  " Nice status bar for buffers
Plug 'jeetsukumaran/vim-buffergator'      " Buffer management
Plug 'danro/rename.vim'                   " Rename current file
Plug 'benekastah/neomake'                 " Asynchronous make through neovim
"Plug 'LucHermitte/lh-vim-lib'
"Plug 'LucHermitte/local_vimrc'

" Formatting
Plug 'godlygeek/tabular'        " Another alignment package; Required by vim-markdown
Plug 'tpope/vim-surround'       " Easy surrounding
Plug 'scrooloose/nerdcommenter' " Easier commenting
Plug 'clarke/vim-renumber'      " Automatically renumber list
Plug 'tpope/vim-repeat'         " For repeating advanced vim commands
Plug 'ciaranm/detectindent'     " Automatically detect formatting (like vim-sleuth, but I can call it manually
Plug 'jiangmiao/auto-pairs'     " Automatically close quotes, parentheses, etc.

"Plug 'junegunn/vim-easy-align'            " Easy align
"Plug 'tpope/vim-sleuth'                   " Autodetect formatting from files
"Plug 'roman/golden-ratio'                 " Automatically resize active splits to the golden ratio
"Plug 'ashiklom/vimoutliner'

" Filetype-specific
Plug 'vim-latex/vim-latex'                " LaTex
Plug 'vimwiki/vimwiki'                    " Vim Wiki - Awesome note-taking plugin!
Plug 'chrisbra/csv.vim'                   " For working with CSV's
Plug 'tmux-plugins/vim-tmux'              " For tmux conf file
Plug 'maverickg/stan.vim'                 " For STAN model files
Plug 'pangloss/vim-javascript'
Plug 'exu/pgsql.vim'                      " PostgreSQL syntax highlighting
Plug 'bfredl/nvim-ipy'                    " IPython in Neovim

"Plug 'davidhalter/jedi-vim'               " Python autocompletion
"Plug 'zorab47/vim-gams'                   " Gams syntax and formatting
"Plug 'plasticboy/vim-markdown'
"Plug 'scrooloose/syntastic'              " Syntax checking
"Plug 'ivanov/vim-ipython'

" Other
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Lokaltog/vim-easymotion'            " Easier motions within files
Plug 'mattn/calendar-vim'                 " Powerful calendar inside vim
Plug 'tpope/vim-obsession'                " Session management

"Plug 'zhaocai/GoldenView.Vim'             " Automatically resize windows
"Plug 'tbabej/taskwiki'
"Plug 'blindFS/vim-taskwarrior'            " Interface for task warrior management system
"Plug 'itchyny/calendar.vim'
"Plug 'reedes/vim-pencil'                 " Easy formatting for prose in vim
"Plug 'Valloric/YouCompleteMe'             " Better code completion
"Plug 'christoomey/vim-tmux-navigator'    " Easy tmux navigation

" Color schemes
Plug 'ashiklom/vim-colorschemes'             " Big library of vim color schemes!

" Vim / neovim
Plug 'jalvesaq/Nvim-R'                    " Neovim R plugin
call plug#end()

filetype plugin indent on
syntax enable

