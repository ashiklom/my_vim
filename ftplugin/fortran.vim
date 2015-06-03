" Fortran-specific settings

" Always use free source 
let fortran_free_source = 1

" Check syntax with \fc
nmap <leader>fc :!gfortran % -fsyntax-only<CR>
