" Custom settings for LaTeX files (.tex)

" Load common settings for text files
source ~/.nvim/ftplugin/txt.vim

" Additional custom settings
set sw=2
set iskeyword+=:

" LaTeX 
map <localleader><enter> <Plug>IMAP_JumpForward
imap <C-j> <Plug>IMAP_JumpForward
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Quick make and view
nnoremap <leader>mk :!make<CR>
nnoremap <leader>vv :!evince *.pdf &<CR><CR>

