" Plugins
filetype off
set rtp+=~/.nvim/bundle/Vundle.vim
call vundle#begin()
source ~/.nvim/pluglist.vim
call vundle#end()
filetype plugin indent on

syntax enable

colorscheme ir_black

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

set hidden              " Modified buffers in background

set wildmenu 		" visual autocomplete for command menu
set lazyredraw		
set showmatch		" show matching parentheses
set backspace=2         " Fix backspace behavior

nnoremap ; :

"" Highlight whitespace with <leader> l
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"nnoremap <leader>l :set list!<CR> 

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
vnoremap j gj
vnoremap k gk

"Select entire file
nnoremap gv `[v`]

"VIMRC
nnoremap <leader>ev :vsp ~/.nvim/vimrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ep :vsp ~/.nvim/pluglist.vim<CR>

" NERDTree (File browse)
noremap <leader>ee :NERDTreeToggle<CR>
"noremap <leader>bb :Bookmark<CR>

" CtrlP (file and buffer fuzzy match)
nmap <leader>bd :CtrlPBookmarkDir<CR>
nmap <leader>bb :CtrlPBuffer<CR>
nmap <leader>bm: CtrlPMRU<CR>

" BufferGator (buffer management)
let g:buffergator_suppress_keymaps = 1
nmap <leader>jj :BuffergatorMruCyclePrev<CR>
nmap <leader>kk :BuffergatorMruCycleNext<CR>
nmap <leader>bl :BuffergatorOpen<CR>
nmap <leader>q :bp <BAR> bd #<CR>
nmap <leader>= :enew<CR>

" Map <leader>cd to change working directory to file location
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy indentation in insert mode
imap <C-l> <C-t>
imap <C-h> <C-d>

" Easy align 
map <leader>ea :EasyAlign<CR>

" SingleCompile
nmap <F9> :SCCompile<CR>
nmap <F10> :SCCompileRun<cr>

" Git
nmap <leader>gs :Gstatus<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gu :Gpull<CR>

" LaTeX 
map <leader><enter> <Plug>IMAP_JumpForward
imap <C-j> <Plug>IMAP_JumpForward
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Quick make and view
nmap <leader>mk :!make<CR>
nmap <leader>vv :!evince *.pdf &<CR><CR>

" Spelling
nmap <leader>/ :set spell!<CR>

" Rescan syntax
nmap <leader>00 :syntax sync fromstart<CR>

" Create new Evernote
nmap <leader>1e :tabnew<CR>:e ~/Documents/geeknote/

" Path shortcuts -- write
nmap<leader>pwe :w ~/Documents/geeknote/
