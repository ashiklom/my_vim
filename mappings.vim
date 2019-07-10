" Vanilla mappings
let mapleader = " "
let maplocalleader = "\\"

" Disable 'Ex' mode
map Q <Nop>

" Disable man page view
map K <Nop>

nnoremap S :w!<CR>
inoremap jk <ESC>

" Clear search highlights
nnoremap <leader>, :nohlsearch<cr>

"Move based on visual lines
nnoremap <expr> j v:count == 0 ? 'gj' : 'j'
nnoremap <expr> k v:count == 0 ? 'gk' : 'k'
vnoremap <expr> j v:count == 0 ? 'gj' : 'j'
vnoremap <expr> k v:count == 0 ? 'gk' : 'k'

" ...and use g<jk> to move down 'real' lines
nnoremap gj j
nnoremap gk k
vnoremap gj j
vnoremap gk k

" Select to end/beginning of line
vnoremap <Return> $h
vnoremap <Backspace> vhv_

"VIMRC
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Map <leader>cd to change working directory to file location
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

" Windows and buffers
nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j
nnoremap <silent> <leader>wk <C-w>k
nnoremap <silent> <leader>wl <C-w>l
nnoremap <silent> <leader>wd <C-w>c
nnoremap <silent> <leader>w\ :vsplit<CR>
nnoremap <silent> <leader>w- :split<CR>
nnoremap <silent> <leader>wW :bd<CR>

" Completion
inoremap <C-l> <C-x><C-o>
inoremap <C-f> <C-x><C-f>

" Easy indentation in insert mode
" inoremap <C-l> <C-t>
inoremap <C-h> <C-d>

" Insert literal tab using Shift-tab (useful for code tables)
inoremap <S-Tab> <C-V><Tab>

" Spelling
nnoremap <leader>? :set spell!<CR>

" Toggle wrapping
nnoremap <leader>ps :set wrap!<CR>

" Buffer management
nnoremap <Tab> :b#<CR>
nnoremap <S-Q>h :bp<BAR>bd#<CR>
nnoremap <S-Q>l :bn<BAR>bd#<CR>
nnoremap <LEFT> :bp<CR>
nnoremap <RIGHT> :bn<CR>
nnoremap <S-LEFT> :tabprevious<CR>
nnoremap <S-RIGHT> :tabnext<CR>

" Window resizing
nnoremap <C-S-RIGHT> <C-w>>
nnoremap <C-S-LEFT> <C-w><
nnoremap <C-S-UP> <C-w>-
nnoremap <C-S-DOWN> <C-w>+

tnoremap <S-Tab> <C-\><C-n>:b#<CR>
tnoremap <C-RIGHT> <C-\><C-n>:bn<CR>
tnoremap <C-LEFT> <C-\><C-n>:bp<CR>
tnoremap <S-LEFT> <C-\><C-n>:tabprevious<CR>
tnoremap <S-RIGHT> <C-\><C-n>:tabnext<CR>

" Neovim terminal
"augroup terminal
    "autocmd BufWinEnter,WinEnter term://* startinsert
    "autocmd BufLeave term://* stopinsert
"augroup END

nnoremap gtt :terminal<CR>
nnoremap gts :call Hterm()<CR>
nnoremap gtv :call Vterm()<CR>
tnoremap <C-A> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>l <C-\><C-n><C-w>l
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k

" Quickfix menu
nnoremap <leader>co :copen<CR>
nnoremap <leader>cq :cclose<CR>
nnoremap <leader>cx :cexpr []<CR>

augroup quickfixmenu
    autocmd BufReadPost quickfix nnoremap <buffer><silent> q :cclose<CR>
augroup END

" Trailing whitespace
nnoremap <silent> <leader>ss /\s\+$<CR>``:nohlsearch<CR>
nnoremap <silent> <leader>sd :%s/\s\+$//g<CR>``:nohlsearch<CR>

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

" nvim-ipy
" Disable default mappings. See ftplugin/python.vim for mappings
let g:nvim_ipy_perform_mappings = 0

" Easy align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" UltiSnips (default mappings, just making them explicit)
nnoremap <leader>ue :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-]>"
let g:UltiSnipsJumpBackwardTrigger="<c-[>"
let g:UltiSnipsSnippetsDir=vimdir . "UltiSnips"

" Autopairs
" Don't map control-H
let g:AutoPairsMapCh = 0

" Far
augroup far
    autocmd FileType far_vim map <buffer><silent>q :bw<cr>
augroup END

" DetectIndent
nnoremap <leader>di :DetectIndent<CR>

" Indent guides
nnoremap <silent> <leader>it :IndentGuidesToggle<CR>

" Asynchronous make with vim-dispatch
nnoremap <leader>mm :Make!<CR>
nnoremap <leader>mo :Copen<CR>

" Open current directory
nnoremap <silent> <leader>od :silent !browse<CR>

" Wrap arguments
nnoremap <silent> gs :ArgWrap<CR>

" Jump between Ale issues
nmap <silent> [a <Plug>(ale_previous)
nmap <silent> ]a <Plug>(ale_next)
nmap <silent> [A <Plug>(ale_first)
nmap <silent> ]A <Plug>(ale_last)

" NerdCommenter
nmap <leader>; <Plug>NERDCommenterToggle
vmap <leader>; <Plug>NERDCommenterToggle

" Deprecated...

" LaTeX (has tobe here to enable <C-J>)
"nmap <localleader><enter> <Plug>IMAP_JumpForward
"imap <C-U> <Plug>IMAP_JumpForward


" calendar.vim
"nmap <leader>cal :Calendar<CR>
":command! -nargs=1 Silent execute ':silent '.<q-args> | execute ':redraw!'
"autocmd FileType calendar nmap <buffer> <CR> :<C-u>Silent call vimwiki#diary#calendar_action(b:calendar.day().get_day(), b:calendar.day().get_month(), b:calendar.day().get_year(), b:calendar.day().week(), "V")<CR>

" YouCompleteMe
"let g:ycm_key_invoke_completion = '<tab>'
"let g:ycm_auto_trigger = 0

" neomake
"nmap <leader>nm :Neomake!<CR>
