"" Statusline
"let g:currentmode={ 'n' : 'N' }
"let g:currentmode={ \ 'n'  : 'N ',
    "\ 'no' : 'N Operator Pending ',
    "\ 'v'  : 'V ',
    "\ 'V'  : 'V Line ',
    "\ '^V'; : 'V Block ',
    "\ 's'  : 'Select ',
    "\ 'S'  : 'S Line ',
    "\ '^S' : 'S Block ',
    "\ 'i'  : 'I ',
    "\ 'R'  : 'R ',
    "\ 'Rv' : 'V·Replace ',
    "\ 'c'  : 'Command ',
    "\ 'cv' : 'Vim Ex ',
    "\ 'ce' : 'Ex ',
    "\ 'r'  : 'Prompt ',
    "\ 'rm' : 'More ',
    "\ 'r?' : 'Confirm ',
    "\ '!'  : 'Shell ',
    "\ 't'  : 'Terminal '
    "\}

set statusline=
set statusline+=%{toupper(mode())}\  
set statusline+=%<\(%n)\  
set statusline+=%q%f\  
set statusline+=%h%m%r%w
set statusline+=%=
set statusline+=%y\  
set statusline+=\{%{fugitive#head(8)}}\  
set statusline+=col:\ %3.(%c%V%),\  
set statusline+=line:\ %9.(%-4.l/%4.L%)
