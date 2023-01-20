" Additional info
set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%3*\ %{&fileencoding?&fileencoding:&encoding}\ [%{&fileformat}]\ %4*\ %{&filetype}\ %5*\ %l/%6*%L:\ %5*%2v\ %*

" Instead of percent, we have total number of lines
set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%5*\ %l/%6*%L:\ %5*%2v\ %*

au InsertEnter * hi User1 cterm=bold ctermfg=179 ctermbg=236
au InsertLeave * hi User1 cterm=bold ctermfg=110 ctermbg=236

au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=179
au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=110

hi statusline cterm=none ctermfg=249 ctermbg=239
hi statuslineNC cterm=none ctermfg=249 ctermbg=236

hi User1 cterm=bold ctermfg=110 ctermbg=236
hi User2 cterm=none ctermfg=236 ctermbg=239
hi User3 cterm=none ctermfg=244 ctermbg=238
hi User4 cterm=none ctermfg=248 ctermbg=237
hi User5 cterm=bold ctermfg=250 ctermbg=236
hi User6 cterm=none ctermfg=250 ctermbg=236
hi User9 cterm=bold ctermfg=236 ctermbg=110

