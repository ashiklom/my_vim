" Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/pluglist.vim
call vundle#end()
filetype plugin indent on

syntax enable

colorscheme harlequin

set tabstop=8
set softtabstop=4
set shiftwidth=4    " size of an indent
set expandtab		" tabs are spaces
set smarttab
set shiftround      " use multiple of shiftwidth when indenting with <or >
set autoindent
set copyindent      " copy previous indentation on autoindenting
set nowrap          " no wrapping

set number 		" line numbers
set showcmd		" show command in bottom bar
set cursorline		" highlight current line
set undolevels=1000

set nobackup
set noswapfile

set wildmenu 		" visual autocomplete for command menu
set lazyredraw		
set showmatch		" show matching parentheses
set backspace=2         " Fix backspace behavior

nnoremap ; :

" Highlight whitespace with <leader> l
set listchars=tab:>.,trail:.,extends:#,nbsp:.
nnoremap <leader>l :set list!<CR> 

"Searching; clear search highlights with <leader> <space>
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
nnoremap <leader><space> :nohlsearch<cr>

"Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent	" fold based on indent level

"Move based on visual lines 
nnoremap j gj
nnoremap k gk

"Select entire file
nnoremap gv `[v`]

"Fast save
nnoremap <leader><ENTER> :w<CR>

"VIMRC
nnoremap <leader>ev :vsp ~/.vim/.vimrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Command-t shortcuts
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR> 

" Map <leader>cd to change working directory to file location
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy tab navigation
nmap <leader>] :tabnext<CR>
nmap <leader>[ :tabprevious<CR>
nmap <leader>w :tabnew<CR>
nmap <leader>q :tabclose<CR>

" Easy indentation in insert mode
imap <C-l> <C-t>
imap <C-h> <C-d>

" SingleCompile
nmap <F9> :SCCompile<CR>
nmap <F10> :SCCompileRun<cr>

" Git
nmap <leader>gs :Gstatus<CR>
