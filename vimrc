" Enable Vundle plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source ~/.vim/pluglist.vim
if has('nvim')
    source ~/.vim/pluglist.n.vim
else 
    source ~/.vim/pluglist.v.vim
end
call vundle#end()
filetype plugin indent on

syntax enable

colorscheme ir_black

" Tabs and indenting
set tabstop=8
set softtabstop=4
set shiftwidth=4    " size of an indent
set expandtab       " tabs are spaces
set smarttab
set shiftround      " use multiple of shiftwidth when indenting with <or >
set autoindent
set copyindent      " copy previous indentation on autoindenting
set nowrap          " no wrapping

set number          " line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line

set nobackup
set noswapfile

set undodir=~/.vim/undodir  " Directory for persistent undo
set undofile
set undolevels=1000 " Maximum number of changes that can be undone
set undoreload=1000 " Max number of lines to save for undo
set autoread        " Automatically reload externally edited file

set hidden              " Modified buffers in background

set wildmenu 		" visual autocomplete for command menu
set lazyredraw		
set showmatch		" show matching parentheses
set backspace=2         " Fix backspace behavior

set laststatus=2        " Status bar always on

set shell=/bin/zsh      " Set zsh to default shell

set splitbelow
set splitright

nnoremap ; :

"Searching; clear search highlights with <leader> <space>
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
nnoremap <leader><space> :nohlsearch<cr>

"Folding
"[--
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=marker
set foldmarker=[--,--]
"--]

"Move based on visual lines 
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"Select entire file
nnoremap gv `[v`]$

" Disable 'Ex' mode
map Q <Nop>

"VIMRC
nnoremap <leader>ev :vsp ~/.vim/vimrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ep :vsp ~/.vim/pluglist.vim<CR>

" NERDTree (File browse)
noremap <leader>ee :NERDTreeToggle<CR>

" CtrlP (file and buffer fuzzy match)
nmap <C-b> :CtrlPBuffer<CR>
nmap <leader>bd :CtrlPBookmarkDir<CR>
nmap <leader>bm: CtrlPMRU<CR>
set wildignore+=*.o,*.so

" BufferGator (buffer management)
let g:buffergator_suppress_keymaps = 1
nmap <leader>kk :BuffergatorMruCyclePrev<CR>
nmap <leader>jj :BuffergatorMruCycleNext<CR>
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
map <leader>et :Tabularize /

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

" Quickly apply settings for text files
nmap <leader>pt :PencilToggle<CR>
nmap <leader>po :PencilOff<CR>
nmap <leader>ps :PencilSoft<CR>
nmap <leader>ph :PencilHard<CR>

" Geeknote
nmap <leader>nn :GeeknoteCreateNote
nmap <leader>ns :GeeknoteSync<CR>
nmap <leader>nw :GeeknoteSaveAsNote<CR>
