" Custom vimscript functions
" Author: Alexey Shiklomanov

let g:myaf = "tcqwanj"
let g:myman = "qwnj"

" Toggle hard wrap for text and comments
function! ToggleHard()
    let fm = &formatoptions
    if fm == g:myaf
        let &formatoptions = g:myman
        echom 'Disabled autoformat!'
    else
        let &formatoptions = g:myaf
        echom 'Enabled autoformat!'
    endif
endfunction

" Show status of 
function! ShowHard()
    let myformat = "tcqwanj"
    if &formatoptions == g:myaf
        return "Auto"
    elseif &formatoptions == g:myman
        return "Man"
    else
        return "None"
    endif
endfunction
