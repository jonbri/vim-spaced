" spaced.vim - Spacing shortcuts
" line-ending/tab/space cleanup mappings

if exists("g:loaded_spaced") || &cp || v:version < 700
  finish
endif
let g:loaded_spaced = 1

function! ExecuteWhiteSpaceToTabs()
  :silent! s/\v^\s{4}/\t/g
  :silent! s/\v^\s{2}/\t/g
endfunction

function! ExecuteWhiteSpaceToSpaces()
  :silent! s/\t/    /g
endfunction

function! ExecuteDeleteSpaceAtEOL()
  :silent! s/\v\r+\s*$//
  :silent! s/\v\s+$//
endfunction

" wt -> whitespace to tabs
vnoremap <leader>wt :call ExecuteWhiteSpaceToTabs()<CR>
nnoremap <silent> <Plug>ExecuteWhiteSpaceToTabsPlug :call ExecuteWhiteSpaceToTabs()<CR>
\:call repeat#set("\<Plug>ExecuteWhiteSpaceToTabsPlug")<CR>
nmap <leader>wt <Plug>ExecuteWhiteSpaceToTabsPlug

" ws -> whitespace to spaces
vnoremap <leader>ws :call ExecuteWhiteSpaceToSpaces()<CR>
nnoremap <silent> <Plug>ExecuteWhiteSpaceToSpacesPlug :call ExecuteWhiteSpaceToSpaces()<CR>
\:call repeat#set("\<Plug>ExecuteWhiteSpaceToSpacesPlug")<CR>
nmap <leader>ws <Plug>ExecuteWhiteSpaceToSpacesPlug

" Kill space at eol
vnoremap <leader>deol :call ExecuteDeleteSpaceAtEOL()<CR>
nnoremap <silent> <Plug>ExecuteDeleteSpacesAtEOLPlug :call ExecuteDeleteSpaceAtEOL()<CR>
\:call repeat#set("\<Plug>ExecuteDeleteSpacesAtEOLPlug")<CR>
nmap <leader>deol <Plug>ExecuteDeleteSpacesAtEOLPlug
