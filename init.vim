" Core (neo)vim configuration
" Author: Alexey Shiklomanov

" Plugins, via vim-plug {{{
call plug#begin('~/.config/nvim/bundle')
" File management
Plug 'tpope/vim-fugitive'                 " Great Git program!
Plug 'kien/ctrlp.vim'                     " Fuzzy file matching
Plug 'scrooloose/nerdtree'                " File browser
Plug 'bling/vim-airline'                  " Nice status bar for buffers
Plug 'jeetsukumaran/vim-buffergator'      " Buffer management
Plug 'danro/rename.vim'                   " Rename current file
Plug 'benekastah/neomake'                 " Asynchronous make through neovim
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'

" Formatting
Plug 'godlygeek/tabular'                  " Another alignment package; Required by vim-markdown
Plug 'tpope/vim-surround'                 " Easy surrounding
Plug 'scrooloose/nerdcommenter'           " Easier commenting
Plug 'clarke/vim-renumber'                " Automatically renumber list
"Plug 'roman/golden-ratio'                 " Automatically resize active splits to the golden ratio
"Plug 'ashiklom/vimoutliner'

" Filetype-specific
"Plug 'davidhalter/jedi-vim'               " Python autocompletion
"Plug 'zorab47/vim-gams'                   " Gams syntax and formatting
"Plug 'plasticboy/vim-markdown'
Plug 'vim-latex/vim-latex'                " LaTex
Plug 'vimwiki/vimwiki'                    " Vim Wiki - Awesome note-taking plugin!
Plug 'chrisbra/csv.vim'                   " For working with CSV's
Plug 'tmux-plugins/vim-tmux'              " For tmux conf file
"Plug 'scrooloose/syntastic'              " Syntax checking
"Plug 'ivanov/vim-ipython'

" Other
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'Lokaltog/vim-easymotion'            " Easier motions within files
Plug 'mattn/calendar-vim'                 " Powerful calendar inside vim
"Plug 'tbabej/taskwiki'
"Plug 'blindFS/vim-taskwarrior'            " Interface for task warrior management system
"Plug 'itchyny/calendar.vim'
"Plug 'reedes/vim-pencil'                 " Easy formatting for prose in vim
"Plug 'Valloric/YouCompleteMe'             " Better code completion
"Plug 'christoomey/vim-tmux-navigator'    " Easy tmux navigation

" Color schemes
Plug 'flazz/vim-colorschemes'             " Big library of vim color schemes!

" Vim / neovim
if has('nvim')
    Plug 'jalvesaq/Nvim-R'                    " Neovim R plugin
else
    Plug 'vim-scripts/Vim-R-plugin'
end
call plug#end()
filetype plugin indent on
syntax enable
" }}}
" Options (see :options) {{{
" 2 Moving around, searching and patterns {{{
set incsearch		" search as characters are entered
set ignorecase          " Ignore case in search
set smartcase           " Only ignore case if all lowercase
" }}}
" 4 Displaying text {{{
set wrap            " allow soft wrapping
set linebreak       " Break lines at logical places
set breakindent     " Align soft wrap
set breakindentopt=shift:2
set lazyredraw      " don't withdraw while executing macros
set nolist          " display certain characters
set listchars=tab:>-    " String for displaying tabs
set number          " line numbers
" }}}
" 5 Syntax, highlighting, and spelling {{{
set hlsearch		" highlight matches
set cursorline      " highlight current line
" }}}
" 6 Multiple windows {{{
set laststatus=2        " Status bar always on
set hidden              " Modified buffers in background
" }}}
" 11 Messages and info {{{
set showcmd         " show command in bottom bar
" }}}
" 13 Editing text {{{
set undolevels=1000      " Maximum number of changes that can be undone
set undoreload=1000      " Max number of lines to save for undo
set backspace=2          " Fix backspace behavior
set noshowmatch          " do not show matching parentheses
set formatoptions=qwnj   " No autoformatting by default
" }}}
" 14 Tabs and indenting {{{
set tabstop=8
set shiftwidth=4    " size of an indent
set smarttab
set softtabstop=4
set shiftround      " use multiple of shiftwidth when indenting with <or >
set expandtab       " tabs are spaces
set autoindent
set copyindent      " copy previous indentation on autoindenting
" }}}
" 15 Folding {{{
set foldenable
set foldlevelstart=99
set foldmethod=indent
set foldnestmax=10
" }}}
" 17 Mapping {{{
set timeoutlen=500      " Time (ms) to pick out multiple key commands
" }}}
" 18 Reading and writing files {{{
set modeline
set autoread        " Automatically reload externally edited file
set nobackup
" }}}
" 19 The swap file {{{
set noswapfile
" }}}
" 20 Command line editing {{{
set wildignore+=*.o,*.so
set wildmenu        " visual autocomplete for command menu
set undofile
set undodir=~/.config/nvim/undodir  " Directory for persistent undo
" }}}
" 21 Executing external commands {{{
set shell=/bin/zsh      " Set zsh to default shell
" }}}
" }}}
" Load user-defined functions {{{
source ~/.config/nvim/customfunctions.vim
" }}}
" Vanilla mappings {{{
let mapleader = ","
let maplocalleader = "\\"

" Disable 'Ex' mode
map Q <Nop>

"nnoremap ; :
"nnoremap <Return> ;
nnoremap <Backspace> ,
nnoremap S :w!<CR>
inoremap jk <ESC>

" Clear search highlights with <leader> <space>
nnoremap <leader><space> :nohlsearch<cr>

"Move based on visual lines 
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"VIMRC
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Map <leader>cd to change working directory to file location
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy indentation in insert mode
inoremap <C-l> <C-t>
inoremap <C-h> <C-d>

" Spelling
nnoremap <leader>/ :set spell!<CR>

" Quickly change to hard wrap
nnoremap <leader>pp :call ToggleHard()<CR>
"inoremap <c-p> <ESC>:call ToggleHard()<CR>a
nnoremap <leader>ps :set wrap!<CR>
nnoremap <leader>pb :set breakindent!<CR>
" -vanilla }}}
" Plugin mappings {{{
" NERDTree (File browse)
noremap <leader>ee :NERDTreeToggle<CR>

" CtrlP (file and buffer fuzzy match)
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>d :CtrlPBookmarkDir<CR>
nnoremap <leader>o :CtrlPMRU<CR>

" BufferGator (buffer management)
let g:buffergator_suppress_keymaps = 1
nnoremap <leader>l :BuffergatorOpen<CR>
nnoremap <leader>a :BuffergatorTabsOpen<CR>
nnoremap <leader>q :bp<BAR>bd#<CR>
nnoremap <leader>x :bn<BAR>bd#<CR>
nnoremap <UP> :bp<CR>
nnoremap <DOWN> :bn<CR>
nnoremap <PageUp> :tabprevious<CR>
nnoremap <PageDown> :tabnext<CR>

" Easy align 
map <leader>ea :Tabularize /
map <leader>et :Tabularize //l3c1l0<left><left><left><left><left><left><left>

" Git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>

" Vim outliner
"map <localleader>k <Plug>VO_FollowLink
"map <localleader>n <Plug>VO_JumpBack

" LaTeX
nmap <localleader><enter> <Plug>IMAP_JumpForward
imap <C-U> <Plug>IMAP_JumpForward

" Neovim terminal
augroup terminal
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
augroup END

tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-S-l> <C-\><C-n><C-w>l
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-S-k> <C-\><C-n><C-w>k

"tnoremap <C-l> <ESC>ddiclear<CR><ESC>i

tnoremap jk <ESC>
tnoremap <ESC> <C-\><C-n>
"tnoremap <left> <C-\><C-n>:bp<CR>
"tnoremap <right> <C-\><C-n>:bn<CR>

" vimwiki
imap <C-K><C-K> <Plug>VimwikiListNextSymbol
imap <C-K><C-J> <Plug>VimwikiListPrevSymbol
imap <C-U> <Plug>VimwikiListToggle
imap <C-L> <Plug>VimwikiIncreaseLvlSingleItem
imap <C-H> <Plug>VimwikiDecreaseLvlSingleItem
imap <C-D> <ESC>:call Date()<CR>kJA
nmap <Leader>k <Plug>VimwikiDiaryPrevDay
nmap <Leader>j <Plug>VimwikiDiaryNextDay
nmap <leader>w<leader>c :VimwikiTOC<CR>
cabbrev vwt VimwikiTable
iabbrev <expr> adby strftime("%A, %d %B %Y")

" mattn/caledar-vim
augroup calendar
    au FileType calendar nmap <buffer> l /\( \\|\d\)\d\(+\\|*\\| \)<CR>:noh<CR>
    au FileType calendar nmap <buffer> h lNN:noh<CR>
augroup END

" neomake
nmap <leader>nm :Neomake!<CR>

" calendar.vim
"nmap <leader>cal :Calendar<CR>
":command! -nargs=1 Silent execute ':silent '.<q-args> | execute ':redraw!'
"autocmd FileType calendar nmap <buffer> <CR> :<C-u>Silent call vimwiki#diary#calendar_action(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V")<CR>

" -plugins }}}
" Plugin settings {{{
" Buffergator
let g:buffergator_autoupdate = 0

" Vim-R plugin
let R_vsplit = 1
let R_nvimpager = "tab"
"let R_rconsole_width = 80

" vim-markdown
let g:vim_markdown_frontmatter = 1

" vim-pandoc
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#spell#enabled = 0
let g:pandoc#keyboard#use_default_mappings = 0
" YouCompleteMe
"let g:ycm_key_invoke_completion = '<tab>'
"let g:ycm_auto_trigger = 0

" VimWiki
source ~/.config/nvim/vimwiki.settings.vim
 
" golden-ratio
"let g:golden_ratio_exclude_nonmodifiable = 1

" }}}
" Aesthetics {{{
colorscheme molokai_dark

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_x = '%{ShowHard()}'
let g:airline_section_y = '%y'
" }}}
"

" vim: set foldmethod=marker foldlevel=0 :
