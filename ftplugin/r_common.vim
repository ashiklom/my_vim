" Set tabstop to 2 by default (R style guide)
setlocal tabstop=2
setlocal completeopt-=preview

" Disable pandoc formatting feature
let g:pandoc#formatting#equalprg = ''

" Vim-R plugin
let R_nvimpager = "horizontal"
let R_rconsole_width = 80
let R_min_editor_width = 60
let R_pdfviewer = 'evince'
let R_assign_map = "<M-->"
let R_nvim_wd = 1
let R_clear_line = 1
let R_complete = 2
let R_setwidth = 2

let R_tmpdir = "/tmp/Nvim-R-" . strftime("%Y%m%d%H%M%S")

let R_objbr_place = "console,top"
let R_objbr_h = 10

let r_indent_align_args = 1
let r_indent_rstudio = 1

" Change 'd' mappings to allow for quick <leader>d calls
nmap <buffer> <localleader>tt <Plug>RDputObj
vmap <buffer> <localleader>tt <Plug>RDputObj

" Key shortcut for pipe
inoremap <buffer> <M-m> <space>%>%
inoremap <buffer> <M-t> <space>%T>%

" Zeallot multiple assignment
inoremap <buffer> <M-z> <space>%<-%

" Key shortcut for roxygen comment
inoremap <buffer> <C-C> #<C-v>'

" Insert line of comment tags
nnoremap <buffer> <localleader>cc 060i#<ESC>j

" Custom R commands
" devtools
nmap <silent> <localleader>vl :call g:SendCmdToR("devtools::load_all('.')")<CR>
nmap <silent> <localleader>vd :call g:SendCmdToR("devtools::document('.')")<CR>
nmap <silent> <localleader>vi :call g:SendCmdToR("devtools::install('.')")<CR>
nmap <silent> <localleader>vt :call g:SendCmdToR("devtools::test('.')")<CR>
nmap <silent> <localleader>vw :call g:SendCmdToR(".width(verbose = FALSE)")<CR>

" tidyverse
nmap <silent> <localleader>tg :call g:SendCmdToR("dplyr::glimpse(".expand('<cword>').")")<CR>

" Help functions
nmap <silent> <localleader>hp :call g:SendCmdToR("help(package = ".expand('<cword>').")")<CR>
nmap <silent> <localleader>hi :call g:SendCmdToR("help(package = ".expand('<cword>').", help_type = 'HTML')")<CR>

" Use styler to process text
vnoremap <silent> <localleader>gf :!rstyle<CR>

" Split selected path
vnoremap <silent> <localleader>ps :s/\//", "/g<CR>:nohlsearch<CR>

" Use Tmux for R console
"let R_in_buffer = 0
"let R_tmux_split = 1
