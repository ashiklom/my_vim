" Custom grep command
command! -bang -nargs=* Rgrep call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Search for files
nnoremap <leader>t :Files<CR>
nnoremap <leader>fg :GFiles<CR>
nnoremap <leader>b :Buffers<CR>

" Search in files
nnoremap <leader>l :Lines<CR>
nnoremap <leader>rg :Rgrep 
vnoremap <leader>rg "gy:Rgrep <C-R>g<CR>
nnoremap <leader>rw :Rgrep <C-R><C-W><CR>

augroup fzf
    " Close with escape
    autocmd FileType fzf tnoremap <buffer> <ESC> <C-C>
    autocmd FileType fzf tnoremap <buffer> <leader>c <C-C>
    " Override window-switching mappings (from Nvim-R terminal)
    autocmd FileType fzf tnoremap <buffer> <C-j> <DOWN>
    autocmd FileType fzf tnoremap <buffer> <C-k> <UP>
augroup END
