call plug#begin("~/.config/nvim/bundle")

Plug 'vim-scripts/rename'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'ashiklom/vim-colorschemes'

Plug 'jalvesaq/Nvim-R', {'for' : ['r', 'rmd', 'rnoweb', 'vim']}
Plug 'ashiklom/r-vim-runtime', {'for' : ['r', 'rmd', 'rnoweb', 'vim']} " Newer version of default Vim runtime files
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'maverickg/stan.vim'
Plug 'sheerun/vim-polyglot'               " Large syntax highlighting library

call plug#end()

filetype plugin indent on
syntax enable

let mapleader = " "
let maplocalleader = "\\"
let vimdir = $HOME . "/.config/nvim/"

colorscheme molokai_custom

map Q <Nop>
inoremap jk <ESC>

" Files
nnoremap <leader>fs :w<CR>
nnoremap <leader>ff :e 

" Windows and buffers
nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l
nnoremap <silent> <leader>wd <C-w>c
nnoremap <silent> <leader>w\ :vsplit<CR>
nnoremap <silent> <leader>w- :split<CR>

nnoremap <silent> <leader>bk :bd<CR>
