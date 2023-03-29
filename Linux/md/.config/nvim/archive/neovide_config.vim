"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NEOVIDE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("g:neovide")
    let g:neovide_hide_mouse_when_typing = v:true
    set guifont=Fantasque\ Sans\ Mono:h12
    colorscheme gruvbox
    set cursorline
    set scrolloff=11

    let g:neovide_padding_right = 16

    set filetype=none
    set laststatus=2
    set statusline=
    set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%4*\ %p%%\ %5*\ %l:\ %2v\ %*
    
    au InsertEnter * hi User1 gui=bold guifg=#d79921 guibg=#303030
    au InsertLeave * hi User1 gui=bold guifg=#d75f00 guibg=#303030
    
    au InsertEnter * hi User9 gui=bold guifg=#303030 guibg=#d79921
    au InsertLeave * hi User9 gui=bold guifg=#303030 guibg=#d75f00
    
    hi statusline gui=none guifg=#b2b2b2 guibg=#4e4e4e
    hi statuslineNC gui=none guifg=#b2b2b2 guibg=#303030
    
    hi User1 gui=bold guifg=#d75f00 guibg=#303030
    hi User2 gui=none guifg=#303030 guibg=#4e4e4e
    hi User3 gui=none guifg=#808080 guibg=#444444
    hi User4 gui=none guifg=#808080 guibg=#3a3a3a
    hi User5 gui=bold guifg=#a8a8a8 guibg=#303030
    hi User6 gui=none guifg=#c6c6c6 guibg=#303030
    hi User9 gui=bold guifg=#303030 guibg=#d75f00

    hi CursorLine gui=NONE guibg=NONE guifg=NONE

    hi! link markdownH1 GruvboxRedBold
    hi! link markdownH2 GruvboxYellowBold
    hi! link markdownH3 GruvboxGreenBold
    hi! link markdownH4 GruvboxBlueBold
    hi! link markdownH5 GruvboxPurpleBold
    hi! link markdownH6 GruvboxYellow
endif

