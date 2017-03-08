" Custom settings for LaTeX files (.tex)

" Load common settings for text files
"source ~/.nvim/ftplugin/txt.vim

" Additional custom settings
set shiftwidth=2
set iskeyword+=:

" LaTeX 
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Quick make and view
"nnoremap <leader>mk    " Use neomake (,nm) instead
nnoremap <leader>vv :!xdg-open *.pdf &<CR><CR>
