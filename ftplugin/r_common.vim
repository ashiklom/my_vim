" Disable pandoc formatting feature
let g:pandoc#formatting#equalprg = ''

" Vim-R plugin
let R_nvimpager = "tab"
let R_rconsole_width = 80
let R_min_editor_width = 60
let R_pdfviewer = 'okular'
let R_assign_map = "<M-->"
"let r_indent_align_args = 0
"let r_indent_ess_compatible = 1 
let R_nvim_wd = 1

" Use Tmux for R console
"let R_in_buffer = 0
"let R_tmux_split = 1
"let R_term_cmd = "termite --icon=/usr/share/pixmaps/r.png --title=R -e"
"let R_term_cmd = "termite -e"

" Change 'd' mappings to allow for quick <leader>d calls
nmap <buffer> <localleader>tt <Plug>RDputObj
vmap <buffer> <localleader>tt <Plug>RDputObj

" Key shortcut for pipe
imap <buffer> <M-.> <space>%>%<space>
imap <buffer> <M-t> <space>%T>%<space>

" Key shortcut for roxygen comment
imap <buffer> <M-c> #<C-v>'<space>

" Insert line of comment tags
nmap <buffer> <localleader>cc 060i#<ESC>j
