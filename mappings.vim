" Vanilla mappings
let mapleader = ","
let maplocalleader = "\\"

" Disable 'Ex' mode
map Q <Nop>

" Disable man page view
map K <Nop>

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

" Select to end/beginning of line
vnoremap <Return> $h
vnoremap <Backspace> vhv_

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
nnoremap <C-c> <C-w>c

" Easy indentation in insert mode
inoremap <C-l> <C-t>
inoremap <C-h> <C-d>

" Insert literal tab using Shift-tab (useful for code tables)
inoremap <S-Tab> <C-V><Tab>

" Spelling
nnoremap <leader>/ :set spell!<CR>

" Toggle wrapping
nnoremap <leader>ps :set wrap!<CR>

" Buffer management
nnoremap <leader>qq :q<CR>
nnoremap <Tab> :b#<CR>
nnoremap <S-Q>h :bp<BAR>bd#<CR>
nnoremap <S-Q>l :bn<BAR>bd#<CR>
nnoremap <S-UP> :bp<CR>
nnoremap <S-DOWN> :bn<CR>
nnoremap <S-LEFT> :tabprevious<CR>
nnoremap <S-RIGHT> :tabnext<CR>

tnoremap <S-Tab> <C-\><C-n>:b#<CR>
tnoremap <S-DOWN> <C-\><C-n>:bn<CR>
tnoremap <S-UP> <C-\><C-n>:bp<CR>
tnoremap <S-LEFT> <C-\><C-n>:tabprevious<CR>
tnoremap <S-RIGHT> <C-\><C-n>:tabnext<CR>

" Window resizing
nnoremap <C-S-RIGHT> <C-w>>
nnoremap <C-S-LEFT> <C-w><
nnoremap <C-S-UP> <C-w>-
nnoremap <C-S-DOWN> <C-w>+

" Neovim terminal
augroup terminal
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
augroup END

nnoremap gtt :terminal<CR>
nnoremap gts :split<BAR>terminal<CR>
nnoremap gtv :vsplit<BAR>terminal<CR>
tnoremap <ESC> <C-\><C-n>
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-l> <C-\><C-n><C-w>l
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k

" Quickfix menu
nnoremap <leader>co :copen<CR>
nnoremap <leader>cq :cclose<CR>
nnoremap <leader>cx :cexpr []<CR>

" ----------------------------------------------------------
" Plugin mappings
" ----------------------------------------------------------

" NERDTree (File browse)
noremap <leader>ee :NERDTreeToggle<CR>

" Git
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>

" mattn/caledar-vim
augroup calendar
    au FileType calendar nmap <buffer> l /\( \\|\d\)\d\(+\\|*\\| \)<CR>:noh<CR>
    au FileType calendar nmap <buffer> h lNN:noh<CR>
augroup END

" neomake
nmap <leader>nm :Neomake!<CR>

" nvim-ipy
" Disable default mappings. See ftplugin/python.vim for mappings
let g:nvim_ipy_perform_mappings = 0

" Easy align 
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"map <leader>ea :Tabularize /
"map <leader>et :Tabularize //l3c1l0<left><left><left><left><left><left><left>

" UltiSnips (default mappings, just making them explicit)
map <leader>ue :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-]>"
let g:UltiSnipsJumpBackwardTrigger="<c-[>"
let g:UltiSnipsSnippetsDir=vimdir . "UltiSnips"

" Autopairs
" Don't map control-H
let g:AutoPairsMapCh = 0

" LaTeX (has tobe here to enable <C-J>)
nmap <localleader><enter> <Plug>IMAP_JumpForward
imap <C-U> <Plug>IMAP_JumpForward

" calendar.vim
"nmap <leader>cal :Calendar<CR>
":command! -nargs=1 Silent execute ':silent '.<q-args> | execute ':redraw!'
"autocmd FileType calendar nmap <buffer> <CR> :<C-u>Silent call vimwiki#diary#calendar_action(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V")<CR>

" YouCompleteMe
"let g:ycm_key_invoke_completion = '<tab>'
"let g:ycm_auto_trigger = 0
