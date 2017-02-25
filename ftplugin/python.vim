" IPython mappings
nmap <silent> <buffer> <localleader>rf :IPython<CR>
nmap <silent> <buffer> <localleader>rq <Plug>(IPy-Terminate) <bar>:bd \[jupyter]<CR>
nmap <silent> <buffer> <localleader>l <Plug>(IPy-Run)
vmap <silent> <buffer> <localleader>ss <Plug>(IPy-Run)
nmap <silent> <buffer> <localleader>? <Plug>(IPy-WordObjInfo)
nmap <silent> <buffer> <localleader>x <Plug>(IPy-Interrupt)

imap <silent> <buffer> <C-F> <Plug>(IPy-Complete)
