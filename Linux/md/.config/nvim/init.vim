
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general_settings.vim
source $HOME/.config/nvim/leader_general.vim
source $HOME/.config/nvim/leader_plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width=82

" Goyo Settings
function! s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    hi statusline cterm=bold ctermfg=15 ctermbg=237
    hi User1 cterm=bold ctermfg=16 ctermbg=7
    hi User2 cterm=bold ctermfg=7 ctermbg=237
    hi User3 cterm=bold ctermfg=7 ctermbg=237
    hi User4 cterm=bold ctermfg=16 ctermbg=7
    hi User5 cterm=bold ctermfg=15 ctermbg=16
    hi User6 cterm=bold ctermfg=7 ctermbg=16
    hi User7 cterm=bold ctermfg=16 ctermbg=237
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Coursor appearance -- depends on mode
set cursorline
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Make coursor shape change immidiate
set timeoutlen=1000
set ttimeoutlen=1

" No welcome message
set shortmess+=I

colorscheme gruvbox

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE
" Only number of the line is highlighted
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

" STATUSLINE
" Black-gray-white
set laststatus=2
set statusline=
set statusline=%2*░▒▓%*%1*\ %t\ %M\ %*%2*%*%=%3*%*%4*\ %{&filetype}\ %*%6*%*%5*\ %{&fileencoding?&fileencoding:&encoding}\ %*%6*%*%4*\ %{&fileformat}\ %*%6*%*%5*\ %l/%L:\ %2v\ %*%7*▓▒░%*

hi statusline cterm=bold ctermfg=15 ctermbg=237
hi statuslineNC cterm=NONE ctermfg=8 ctermbg=235

hi User1 cterm=bold ctermfg=16 ctermbg=7
au InsertEnter * hi User1 cterm=bold ctermfg=16 ctermbg=3
au InsertLeave * hi User1 cterm=bold ctermfg=16 ctermbg=7

hi User2 cterm=bold ctermfg=7 ctermbg=237
au InsertEnter * hi User2 cterm=bold ctermfg=3 ctermbg=237
au InsertLeave * hi User2 cterm=bold ctermfg=7 ctermbg=237

hi User3 cterm=bold ctermfg=7 ctermbg=237
hi User4 cterm=bold ctermfg=16 ctermbg=7
hi User5 cterm=bold ctermfg=15 ctermbg=16
hi User6 cterm=bold ctermfg=7 ctermbg=16
hi User7 cterm=bold ctermfg=16 ctermbg=237

