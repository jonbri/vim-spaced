" spaced.vim - Spacing shortcuts
" line-ending/tab/space cleanup mappings

if exists("g:loaded_spaced") || &cp || v:version < 700
  finish
endif
let g:loaded_spaced = 1

" wt -> whitespace to tabs
function! ExecuteSpacesToTabs()
  :silent! s/\v^\s{4}/\t/g
  :silent! s/\v^\s{2}/\t/g
endfunction
vnoremap <leader>wt :call ExecuteSpacesToTabs()<CR>
nnoremap <silent> <Plug>SpacesToTabsPlug :call ExecuteSpacesToTabs()<CR>
\:call repeat#set("\<Plug>SpacesToTabsPlug")<CR>
nmap <leader>wt <Plug>SpacesToTabsPlug

" ws -> whitespace to spaces
function! ExecuteTabsToSpaces()
  :silent! s/\t/    /g
endfunction
vnoremap <leader>ws :call ExecuteTabsToSpaces()<CR>
nnoremap <silent> <Plug>TabsToSpacesPlug :call ExecuteTabsToSpaces()<CR>
\:call repeat#set("\<Plug>TabsToSpacesPlug")<CR>
nmap <leader>ws <Plug>TabsToSpacesPlug

" Kill space at eol
function! ExecuteCleanEOL()
  :silent! s/\v\r+\s*$//
  :silent! s/\v\s+$//
endfunction
vnoremap <leader>deol :call ExecuteCleanEOL()<CR>
nnoremap <silent> <Plug>CleanEOLPlug :call ExecuteCleanEOL()<CR>
\:call repeat#set("\<Plug>CleanEOLPlug")<CR>
nmap <leader>deol <Plug>CleanEOLPlug
