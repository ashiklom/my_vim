" Custom settings for LaTeX files (.tex)

" Load common settings for text files
"source ~/.nvim/ftplugin/txt.vim

" Additional custom settings
setlocal shiftwidth=2
setlocal iskeyword+=:,-

"" LaTeX 
"setlocal grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
setlocal wrap
"let g:Tex_DefaultFormat = 'pdf'
"let g:Tex_MultipleCompileFormats = 'pdf, aux'

"" Quick make and view
""nnoremap <leader>mk    " Use neomake (,nm) instead
"nnoremap <leader>vv :!xdg-open *.pdf &<CR><CR>

" vim-surround:
" q for `foo', Q for ``foo'', and c for \texttt{foo}
let b:surround_{char2nr('q')} = "`\r'"
let b:surround_{char2nr('Q')} = "``\r''"
let b:surround_{char2nr('c')} = "\\texttt{\r}"
