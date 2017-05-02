" Denite global mappings
nnoremap <leader>dt :Denite buffer file_rec<CR>
nnoremap <leader>db :Denite buffer<CR>
nnoremap <leader>do :Denite file_old<CR>
nnoremap <leader>df :Denite file<CR>
nnoremap <leader>dg :Denite grep<CR>
nnoremap <leader>dG :Denite grepcase<CR>

" Denite internal mappings
call denite#custom#map(
            \ 'insert',
            \ '<C-j>',
            \ '<denite:move_to_next_line>',
            \ 'noremap'
            \)

call denite#custom#map(
            \ 'insert',
            \ '<C-k>',
            \ '<denite:move_to_previous_line>',
            \ 'noremap'
            \)

" ---------------------------------
" Settings
" ---------------------------------

" Use ag for file listing
call denite#custom#var('file_rec', 'command', 
            \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])


" Case-insensitive grep (default)
" Note that it uses ripgrep (rg)
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
            \ ['--vimgrep', '--no-heading', '--ignore-case'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Case-sensitive grep
call denite#custom#var('grepcase', 'command', ['rg'])
call denite#custom#var('grepcase', 'default_opts',
            \ ['--vimgrep', '--no-heading'])
call denite#custom#var('grepcase', 'recursive_opts', [])
call denite#custom#var('grepcase', 'pattern_opt', ['--regexp'])
call denite#custom#var('grepcase', 'separator', ['--'])
call denite#custom#var('grepcase', 'final_opts', [])
