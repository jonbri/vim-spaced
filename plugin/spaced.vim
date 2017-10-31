" spaced.vim - Spacing shortcuts
" line-ending/tab/space cleanup mappings

if exists("g:loaded_spaced") || &cp || v:version < 700
  finish
endif
let g:loaded_spaced = 1

function! ExecuteWhiteSpaceToTabs()
    :s/\s\s\s\s/\t/g
endfunction

function! ExecuteWhiteSpaceToSpaces()
    :s/\t/    /g
endfunction

function! ExecuteDeleteWindowsLineEndings()
    :s/\r//g
endfunction

function! ExecuteDeleteSpaceAtEOL()
    :s/\s\+$//
endfunction

" wt -> whitespace be tabs
vnoremap <leader>wt :call ExecuteWhiteSpaceToTabs()<CR>
nnoremap <leader>wt :call ExecuteWhiteSpaceToTabs()<CR>

" ws -> whitespace be spaces
vnoremap <leader>ws :call ExecuteWhiteSpaceToSpaces()<CR>
nnoremap <leader>ws :call ExecuteWhiteSpaceToSpaces()<CR>

" dwe -> delete windows line-endings
vnoremap <leader>dwe :call ExecuteDeleteWindowsLineEndings()<CR>
nnoremap <leader>dwe :call ExecuteDeleteWindowsLineEndings()<CR>

" Kill space at eol
nnoremap <leader>deol :call ExecuteDeleteSpaceAtEOL()<CR>
vnoremap <leader>deol :call ExecuteDeleteSpaceAtEOL()<CR>
