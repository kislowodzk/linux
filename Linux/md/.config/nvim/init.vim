
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general_settings.vim
source $HOME/.config/nvim/leader_plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width=82

" Goyo Settings
function! s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE
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

" Statusline
set laststatus=2
set statusline=
set statusline=%1*\ %t\ %M\ %*%=\ %{&filetype}\ \|\ %{&fileencoding?&fileencoding:&encoding}\ \|\ %{&fileformat}\ \|\ %2l/%L:\ %2v\ 

au InsertEnter * hi User1 cterm=bold ctermfg=0 ctermbg=3
au InsertLeave * hi User1 cterm=bold ctermfg=3 ctermbg=238

hi statusline cterm=bold ctermfg=3 ctermbg=238
hi User1 cterm=bold ctermfg=3 ctermbg=238

