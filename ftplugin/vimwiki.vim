" vimwiki
imap <silent><buffer> <C-K><C-K> <Plug>VimwikiListNextSymbol
imap <silent><buffer> <C-K><C-J> <Plug>VimwikiListPrevSymbol
imap <silent><buffer> <C-U> <Plug>VimwikiListToggle
imap <silent><buffer> <C-L> <Plug>VimwikiIncreaseLvlSingleItem
imap <silent><buffer> <C-H> <Plug>VimwikiDecreaseLvlSingleItem
imap <silent><buffer> <C-D> <ESC>:call Date()<CR>kJA
nmap <silent><buffer> <Leader>k <Plug>VimwikiDiaryPrevDay
nmap <silent><buffer> <Leader>j <Plug>VimwikiDiaryNextDay
nmap <silent><buffer> <leader>w<leader>c :VimwikiTOC<CR>
cabbrev vwt VimwikiTable
iabbrev <expr> adby strftime("%A, %d %B %Y")

