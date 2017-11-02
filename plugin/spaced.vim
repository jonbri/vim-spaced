" spaced.vim - Spacing shortcuts
" line-ending/tab/space cleanup mappings

if exists("g:loaded_spaced") || &cp || v:version < 700
  finish
endif
let g:loaded_spaced = 1

" cT -> toggle spaces/tabs at beginning of current line
function! ExecuteToggleSpacesAndTabs()
  if getline('.') =~ '\v^\t'
    silent! s/\v\t/    /g
  elseif getline('.') =~ '\v^\s\s'
    silent! s/\v\s{4}/\t/g
  endif
endfunction
vnoremap cT :call ExecuteToggleSpacesAndTabs()<CR>
nnoremap <silent> <Plug>ToggleSpacesAndTabsPlug :call ExecuteToggleSpacesAndTabs()<CR>
\:call repeat#set("\<Plug>ToggleSpacesAndTabsPlug")<CR>
nmap cT <Plug>ToggleSpacesAndTabsPlug


" d; -> remove unnecessary characters at end of current line
function! ExecuteCleanEOL()
  :silent! s/\v\r+\s*$//
  :silent! s/\v\s+$//
endfunction
vnoremap d; :call ExecuteCleanEOL()<CR>
nnoremap <silent> <Plug>CleanEOLPlug :call ExecuteCleanEOL()<CR>
\:call repeat#set("\<Plug>CleanEOLPlug")<CR>
nmap d; <Plug>CleanEOLPlug
