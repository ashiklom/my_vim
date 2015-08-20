" Custom vimscript functions
" Author: Alexey Shiklomanov

let g:myaf = "tcwqaj2"
let g:myman = "qwj"
" Optionally add:
"   w -- Whitespace determines autoformat
"   n -- Automatically format lists

" Toggle hard wrap for text and comments
function! ToggleHard()
    let fm = &formatoptions
    if fm == g:myaf
        let &formatoptions = g:myman
        set smartindent
        echom 'Disabled autoformat!'
    else
        let &formatoptions = g:myaf
        " Smartindent misreads coding buzzwords like 'for' and decides it 
        " needs to indent after them. This often happens by accident!
        set nosmartindent
        echom 'Enabled autoformat!'
    endif
endfunction

" Show status of word wrapping
function! ShowHard()
    if &formatoptions == g:myaf
        return "Auto"
    elseif &formatoptions == g:myman
        return "Man"
    else
        return "None"
    endif
endfunction

function! Prose()
    set wrap linebreak breakindent
    echom 'Enabled soft wrapping'
endfunction

function! Code()
    set nowrap nolinebreak nobreakindent
    echom 'Disabled soft wrapping'
endfunction
