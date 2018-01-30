" Split in opposite direction of the current option
command! -nargs=? -complete=file Vsplit :set splitright! | vsplit <args> | :set splitright!
command! -nargs=? -complete=file Split :set splitbelow! | split <args> | :set splitbelow!

" Open terminals
function! Hterm()
    set splitbelow!
    split | terminal
    set splitbelow!
endfunction

function! Vterm()
    set splitright!
    vsplit | terminal
    set splitright!
endfunction
