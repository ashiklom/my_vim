call plug#begin(vimdir . 'bundle')

" Aesthetics
Plug 'bling/vim-airline'                  " Nice status bar for buffers
Plug 'ashiklom/vim-colorschemes'          " Big library of vim color schemes!

" Version control
Plug 'tpope/vim-fugitive'                 " Great Git program!
Plug 'airblade/vim-gitgutter'             " Display git changes in real time

" File management
Plug 'junegunn/fzf', {'do' : './install --all'}
Plug 'junegunn/fzf.vim'
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
Plug 'ashiklom/Nvim-R', {'for' : ['r', 'rmd', 'rnoweb']}
Plug 'ashiklom/r-vim-runtime', {'for' : ['r', 'rmd', 'rnoweb']} " Newer version of default Vim runtime files
Plug 'vim-pandoc/vim-pandoc'
Plug 'mattn/emmet-vim', {'for' : 'html'}     " HTML snippet plugin
Plug 'bfredl/nvim-ipy', {'for' : 'python'}   " IPython in Neovim
Plug 'lervag/vimtex'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'               " Large syntax highlighting library
Plug 'maverickg/stan.vim'
Plug 'vim-scripts/bbcode'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Other
Plug 'tpope/vim-obsession'              " Session management
Plug 'SirVer/ultisnips'                 " Snippets
Plug 'kshenoy/vim-signature'            " Display marks, and additional mark tools
Plug 'tpope/tpope-vim-abolish'          " Better search, substitution, and abbreviation
Plug 'nathanaelkane/vim-indent-guides'  " Indentation guides
Plug 'w0rp/ale'                         " Asynchronous code linting
Plug 'tpope/vim-dispatch'               " Asynchronous execution
Plug 'vimoutliner/vimoutliner'
Plug 'qpkorr/vim-bufkill'
Plug 'blindFS/vim-taskwarrior'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'Shougo/neosnippet.vim'

" Not used
"Plug 'benekastah/neomake'                 " Asynchronous make through neovim
"Plug 'Shougo/denite.nvim'                 " Unifying interface for vim
"Plug 'zorab47/vim-gams'                   " Gams syntax and formatting
"Plug 'davidhalter/jedi-vim'               " Python autocompletion
"Plug 'scrooloose/syntastic'               " Syntax checking
"Plug 'vim-latex/vim-latex'                " LaTex
"Plug 'vimwiki/vimwiki'                    " Vim Wiki - Awesome note-taking plugin!
"Plug 'mattn/calendar-vim'                 " Powerful calendar inside vim
"Plug 'chrisbra/csv.vim'                   " For working with CSV's

call plug#end()

filetype plugin indent on
syntax enable

let g:polyglot_disabled = ["r-lang", "latex"]
let g:BufKillCreateMappings = 0
