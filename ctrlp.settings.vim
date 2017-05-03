" Ctrl-P extensions
let g:ctrlp_extensions = ['line', 'quickfix', 'changes']

" Ctrl-P base mappings
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

" Extension mappings
nnoremap <leader>l :CtrlPLine<CR>
nnoremap <leader>f :CtrlPQuickFix<CR>
nnoremap <leader>a :CtrlPChangeAll<CR>
nnoremap <leader>rr :CtrlPClearCache<CR>
