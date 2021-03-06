
"" If there is filetype, vim will overwrite this -- just for nice statusline
"set filetype=none

"set laststatus=2
"set statusline=

"" Unicode
"set statusline=%2*░▒▓%*%1*\ %t\ %M\ %*%2*%*%=%3*%*%4*\ %{&filetype}\ %*%6*%*%5*\ %{&fileencoding?&fileencoding:&encoding}\ %*%6*%*%4*\ %{&fileformat}\ %*%6*%*%5*\ %l/%L:\ %2v\ %*%7*▓▒░%*

"" ASCII
"" set statusline=%1*\ \ %t\ %M\ %*%=\ %{&filetype}\ \|\ %{&fileencoding?&fileencoding:&encoding}\ \|\ %{&fileformat}\ %4*\ %l/%L:\ %2v\ %*

"hi statusline cterm=bold ctermfg=15 ctermbg=237
"hi statuslineNC cterm=NONE ctermfg=8 ctermbg=235

"hi User1 cterm=bold ctermfg=16 ctermbg=7
"au InsertEnter * hi User1 cterm=bold ctermfg=16 ctermbg=3
"au InsertLeave * hi User1 cterm=bold ctermfg=16 ctermbg=7

"hi User2 cterm=bold ctermfg=7 ctermbg=237
"au InsertEnter * hi User2 cterm=bold ctermfg=3 ctermbg=237
"au InsertLeave * hi User2 cterm=bold ctermfg=7 ctermbg=237

"hi User3 cterm=bold ctermfg=7 ctermbg=237
"hi User4 cterm=bold ctermfg=16 ctermbg=7
"hi User5 cterm=bold ctermfg=15 ctermbg=16
"hi User6 cterm=bold ctermfg=7 ctermbg=16
"hi User7 cterm=bold ctermfg=16 ctermbg=237
" =============================================================

" STATUSLINE
" Blue-yellow
" set laststatus=2
" set statusline=
" set statusline=%2*░▒▓%*%1*\ %t\ %M\ %*%2*%*%=%3*%*%4*\ %{&filetype}\ %*%6*%*%5*\ %{&fileencoding?&fileencoding:&encoding}\ %*%6*%*%4*\ %{&fileformat}\ %*%6*%*%5*\ %l/%L:\ %2v\ %*%7*▓▒░%*

" hi statusline cterm=bold ctermfg=16 ctermbg=NONE

" hi User1 cterm=bold ctermfg=15 ctermbg=4

" au InsertEnter * hi User1 cterm=bold ctermfg=16 ctermbg=3
" au InsertLeave * hi User1 cterm=bold ctermfg=15 ctermbg=4

" hi User2 cterm=bold ctermfg=4 ctermbg=NONE

" au InsertEnter * hi User2 cterm=bold ctermfg=3 ctermbg=NONE
" au InsertLeave * hi User2 cterm=bold ctermfg=4 ctermbg=NONE

" hi User3 cterm=bold ctermfg=4 ctermbg=NONE
" hi User4 cterm=bold ctermfg=15 ctermbg=4
" hi User5 cterm=bold ctermfg=16 ctermbg=3
" hi User6 cterm=bold ctermfg=4 ctermbg=3
" hi User7 cterm=bold ctermfg=3 ctermbg=NONE

" =============================================================

" STATUSLINE
" Old one
" set laststatus=2
" set statusline=
" set statusline=%1*\ %t\ %M\ %*%=\ %{&filetype}\ \│\ %{&fileencoding?&fileencoding:&encoding}\ \│\ %{&fileformat}\ \│\ %l/%L:\ %2v\ 
" " Without weird character as separator
" " set statusline=%1*\ %t\ %M\ %*%=\ %{&filetype}\ \|\ %{&fileencoding?&fileencoding:&encoding}\ \|\ %{&fileformat}\ \|\ %l/%L:\ %2v\ 

" au InsertEnter * hi User1 cterm=bold ctermfg=0 ctermbg=3
" au InsertLeave * hi User1 cterm=bold ctermfg=3 ctermbg=238

" hi statusline cterm=bold ctermfg=3 ctermbg=238
" hi User1 cterm=bold ctermfg=3 ctermbg=238
" " ------------------------------------------------------------


