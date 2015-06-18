" Core (neo)vim configuration
" Author: Alexey Shiklomanov
" Plugins, via vundle {{{
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
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
" }}}
" Options (see :options) {{{
" 2 Moving around, searching and patterns {{{
set incsearch		" search as characters are entered
" }}}
" 4 Displaying text {{{
set nowrap          " no wrapping
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
set undolevels=1000 " Maximum number of changes that can be undone
set undoreload=1000 " Max number of lines to save for undo
set backspace=2         " Fix backspace behavior
set noshowmatch       " do not show matching parentheses
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
set foldlevelstart=0
set foldmethod=marker
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
set undodir=~/.vim/undodir  " Directory for persistent undo
" }}}
" 21 Executing external commands {{{
set shell=/bin/zsh      " Set zsh to default shell
" }}}
" }}}

" Mappings {{{
" Vanilla {{{
let mapleader = ","
let maplocalleader = "\\"

nnoremap ; :
nnoremap <Return> ;
nnoremap <Backspace> ,
nnoremap S :w!<CR>
inoremap jk <ESC>
inoremap <ESC> <nop>

" Disable 'Ex' mode
map Q <Nop>

" Clear search highlights with <leader> <space>
nnoremap <leader><space> :nohlsearch<cr>

"Move based on visual lines 
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

"VIMRC
nnoremap <leader>ev :e ~/.vim/vimrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ep :e ~/.vim/pluglist.vim<CR>

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

" Change word to uppercase in insert mode
inoremap <c-u> <ESC>viwUea
" -vanilla }}}
" Plugins {{{
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
nnoremap <leader>q :bp <BAR> bd #<CR>
nnoremap <leader>k :bp<CR>
nnoremap <leader>j :bn<CR>


" Easy align 
map <leader>ea :EasyAlign<CR>
map <leader>et :Tabularize /

" Git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>

" Quickly apply settings for text files
nnoremap <leader>pp :PencilToggle<CR>
nnoremap <leader>po :PencilOff<CR>
nnoremap <leader>ps :PencilSoft<CR>
nnoremap <leader>ph :PencilHard<CR>
nnoremap <leader>pa :PFormatToggle<CR>

" Geeknote
nnoremap <leader>nn :GeeknoteCreateNote
nnoremap <leader>ns :GeeknoteSync<CR>
nnoremap <leader>nw :GeeknoteSaveAsNote<CR>
" -plugins }}}
" -mappings }}}

" Aesthetics {{{
colorscheme ir_black

" Airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_x = '%{PencilMode()}'
let g:airline_section_y = '%y'
"let g:pencil#mode_indicators = {'soft' : 's'}
" }}}

" vim: set foldlevel=0 :
