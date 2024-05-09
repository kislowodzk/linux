" W PLUGINS
    " Plug 'sainnhe/sonokai'              " Colorscheme sonokai



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SONOKAI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" I changed the way sonokai does some things
"     call sonokai#highlight('markdownItalic', s:palette.blue, s:palette.none, 'italic')
"     call sonokai#highlight('markdownBold', s:palette.purple, s:palette.none, 'bold')
"       if s:configuration.show_eob
    " if s:configuration.dim_inactive_windows
    "   call sonokai#highlight('EndOfBuffer', s:palette.bg4, s:palette.bg_dim)
    " else
    "   call sonokai#highlight('EndOfBuffer', s:palette.bg4, s:palette.none) -- tutaj było bg0 na końcu
    " endif
  " else

" if s:configuration.dim_inactive_windows
"     call sonokai#highlight('NormalNC', s:palette.fg, s:palette.bg_dim)
"   else
"     call sonokai#highlight('NormalNC', s:palette.fg, s:palette.none) --
"     tutaj zmiana
"   endif


" OD TEGO MIEJSCA ODKOMENTOWAĆ SONOKAI
" source ~/.config/nvim/sonokai.vim

" " Hashes before headings
" hi! link markdownHeadingDelimiter Red

" " Color of current line number
" hi! CursorLineNr ctermfg=110

" " Reversed colors in visual mode
" hi! Visual cterm=reverse

" " Better tab colors
" hi! TabLineSel ctermfg=203 ctermbg=235

" " Sonokai

" au InsertEnter * hi User1 cterm=bold ctermfg=203 ctermbg=236
" au InsertLeave * hi User1 cterm=bold ctermfg=110 ctermbg=236

" au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=203
" au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=110

" hi statusline cterm=none ctermfg=249 ctermbg=239
" hi statuslineNC cterm=none ctermfg=249 ctermbg=236

" hi User1 cterm=bold ctermfg=110 ctermbg=236
" hi User4 cterm=none ctermfg=248 ctermbg=237
" hi User5 cterm=bold ctermfg=249 ctermbg=236
" hi User9 cterm=bold ctermfg=236 ctermbg=110

