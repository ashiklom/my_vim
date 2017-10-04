" Set tabstop to 2 by default (R style guide)
setlocal tabstop=2
setlocal completeopt-=preview

" Disable pandoc formatting feature
let g:pandoc#formatting#equalprg = ''

" Vim-R plugin
let R_nvimpager = "tab"
let R_rconsole_width = 80
let R_min_editor_width = 60
let R_pdfviewer = 'okular'
let R_assign_map = "<M-->"
let R_nvim_wd = 1

function! Ralign()
    setlocal nocindent
    let g:r_indent_align_args = 1
    echom 'Using default R alignment'
endfunction

function! Rcindent()
    setlocal cindent
    let &cinoptions = "(0,W" . &tabstop . "m1"
    let g:r_indent_align_args = 0
    echom 'Using cindent'
endfunction

" Default to cindent mode to emulate RStudio (sort-of)
silent call Rcindent()

nnoremap <buffer> <leader>rc :call Rcindent()<CR>
inoremap <buffer> <M-c> <C-O>:call Rcindent()<CR>
nnoremap <buffer> <leader>ra :call Ralign()<CR>
inoremap <buffer> <M-a> <C-O>:call Ralign()<CR>

" Change 'd' mappings to allow for quick <leader>d calls
nmap <buffer> <localleader>tt <Plug>RDputObj
vmap <buffer> <localleader>tt <Plug>RDputObj

" Key shortcut for pipe
inoremap <buffer> <M-m> <space>%>%<space>
inoremap <buffer> <M-t> <space>%T>%<space>

" Key shortcut for roxygen comment
inoremap <buffer> <M-3> #<C-v>'<space>

" Insert line of comment tags
nnoremap <buffer> <localleader>cc 060i#<ESC>j

" Use Tmux for R console
"let R_in_buffer = 0
"let R_tmux_split = 1
