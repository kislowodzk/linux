au InsertEnter * hi User1   cterm=bold   ctermfg=3      ctermbg=236
au InsertLeave * hi User1   cterm=bold   ctermfg=166    ctermbg=236
au InsertEnter * hi User9   cterm=bold   ctermfg=236    ctermbg=3
au InsertLeave * hi User9   cterm=bold   ctermfg=236    ctermbg=166
hi User1            cterm=bold           ctermfg=166    ctermbg=236
hi User9            cterm=bold           ctermfg=236    ctermbg=166
hi statusline       cterm=bold           ctermfg=249    ctermbg=none
hi statuslineNC     cterm=none           ctermfg=249    ctermbg=236
set laststatus=2
set statusline=%9*\ %*%1*\ %t\ %M\ %1*\ %=%1*\ %p%%\ \ %l:\ %2v\ \%9*\ %* 

