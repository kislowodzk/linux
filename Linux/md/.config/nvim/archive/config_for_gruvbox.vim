"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

    Plug 'morhetz/gruvbox'              " Colorscheme gruvbox

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GRUVBOX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:gruvbox_italic = '1'

colorscheme gruvbox

hi! link markdownH1 GruvboxRedBold
hi! link markdownH2 GruvboxYellowBold
hi! link markdownH3 GruvboxGreenBold
hi! link markdownH4 GruvboxBlueBold
hi! link markdownH5 GruvboxPurpleBold
hi! link markdownH6 GruvboxYellow

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => STATUSLINE GRUVBOX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Just for nice statusline
set filetype=none

set laststatus=2
set statusline=

" Basic separators
set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%5*\ %l/%6*%L:\ %5*%2v\ %*

" GRUVBOX

au InsertEnter * hi User1 cterm=bold ctermfg=3 ctermbg=236
au InsertLeave * hi User1 cterm=bold ctermfg=166 ctermbg=236

au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=3
au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=166

hi statusline cterm=none ctermfg=249 ctermbg=239
hi statuslineNC cterm=none ctermfg=249 ctermbg=236

hi User1 cterm=bold ctermfg=166 ctermbg=236
hi User2 cterm=none ctermfg=236 ctermbg=239
hi User3 cterm=none ctermfg=244 ctermbg=238
hi User4 cterm=none ctermfg=244 ctermbg=237
hi User5 cterm=bold ctermfg=248 ctermbg=236
hi User6 cterm=none ctermfg=251 ctermbg=236
hi User9 cterm=bold ctermfg=236 ctermbg=166

