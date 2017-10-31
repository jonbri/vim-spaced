" spaced.vim - Spacing shortcuts
" line-ending/tab/space cleanup mappings

if exists("g:loaded_spaced") || &cp || v:version < 700
  finish
endif
let g:loaded_spaced = 1

" wt -> whitespace be tabs
" 4 spaces
vnoremap <leader>wt :s/\s\s\s\s/\t/g<CR>
nnoremap <leader>wt :s/\s\s\s\s/\t/g<CR>
" 2 spaces
vnoremap <leader>wT :s/\s\s/\t/g<CR>
nnoremap <leader>wT :s/\s\s/\t/g<CR>

" ws -> whitespace be spaces
vnoremap <leader>ws :s/\t/    /g<CR>
nnoremap <leader>ws :s/\t/    /g<CR>

" dwe -> delete windows line-endings
vnoremap <leader>dwe :s/\r//g<CR>
nnoremap <leader>dwe :s/\r//g<CR>

" Kill space at eol
nnoremap <leader>deol :s/\s\+$//<CR>
vnoremap <leader>deol :s/\s\+$//<CR>
