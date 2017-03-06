" Options (see :options)
if (exists("$TMUX"))
    set termguicolors 
endif

set incsearch		" search as characters are entered
set ignorecase          " Ignore case in search
set smartcase           " Only ignore case if all lowercase

set wrap            " allow soft wrapping
set linebreak       " Break lines at logical places
set breakindent     " Align soft wrap
"set breakindentopt=shift:2
set lazyredraw      " don't withdraw while executing macros
set nolist          " display certain characters
set listchars=tab:>-    " String for displaying tabs
set number          " line numbers
set scrolloff=8

set hlsearch		" highlight matches
set cursorline      " highlight current line

set laststatus=2        " Status bar always on
set hidden              " Modified buffers in background

set mouse=""    " Disable mouse selection (allows using native terminal features)

set showcmd         " show command in bottom bar

set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=1000      " Max number of lines to save for undo
set backspace=2          " Fix backspace behavior
set noshowmatch          " do not show matching parentheses
set formatoptions=qwnj   " No autoformatting by default

set tabstop=8
set shiftwidth=4    " size of an indent
set smarttab
set softtabstop=4
set shiftround      " use multiple of shiftwidth when indenting with <or >
set expandtab       " tabs are spaces
set autoindent
set copyindent      " copy previous indentation on autoindenting

"set cindent             " C-style indenting rules
"set cinoptions=(0,W4,m1    " Indent long lines ending in parentheses (e.g. function arguments)

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
