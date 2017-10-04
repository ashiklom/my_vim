" Options (see :options)
"if (exists("$TMUX"))
    "set termguicolors 
"endif
set termguicolors

set incsearch    " search as characters are entered
set ignorecase   " Ignore case in search
set smartcase    " Only ignore case if all lowercase
set guicursor=

set nowrap          " Soft line wrapping
set linebreak       " Break lines at logical places
set breakindent     " Align soft wrap
"set breakindentopt=shift:2
"set lazyredraw      " don't withdraw while executing macros
set nolist          " toggle displaying list characters
set listchars=tab:>-    " String for displaying tabs
set number          " line numbers
set scrolloff=2     " Scroll this many lines before hitting the bottom of the screen

set hlsearch     " highlight matches
set cursorline   " highlight current line

set laststatus=2        " Status bar always on
set hidden              " Modified buffers in background

set mouse=""    " Disable mouse selection (allows using native terminal features)

set showcmd         " show command in bottom bar

set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=1000      " Max number of lines to save for undo
set backspace=2          " Fix backspace behavior
set noshowmatch          " do not show matching parentheses
set formatoptions=qwj   " No autoformatting by default

set tabstop=4      " size of an indent.
set shiftwidth=0   " these settings make all tabs use `tabstop` value
set softtabstop=-1
set smarttab
set shiftround     " use multiple of shiftwidth when indenting with <or >
set expandtab      " tabs are spaces
set autoindent
set copyindent     " copy previous indentation on autoindenting
set nocindent      " Don't use C-style indenting rules

set foldenable
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=10

set timeoutlen=500      " Time (ms) to pick out multiple key commands

set modeline
set autoread        " Automatically reload externally edited file
set nobackup

set noswapfile
set wildignore+=*.o,*.so,*.html
set wildmenu        " visual autocomplete for command menu
set undofile
let &undodir = vimdir . "undodir"  " Directory for persistent undo
set shell=/bin/zsh      " Set zsh to default shell
