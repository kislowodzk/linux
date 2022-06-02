source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/general_settings.vim
source $HOME/.config/nvim/leader_no_plugins.vim
source $HOME/.config/nvim/leader_plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cursorline

" Coursor appearance -- depends on mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Make coursor shape immidiate
set timeoutlen=1000
set ttimeoutlen=1

" Statusline
set laststatus=2
set statusline=
set statusline=%t\ %M\ %=\ %y\ %{&fileencoding?&fileencoding:&encoding}\ \[%{&fileformat}\]\ %l/%L:\ %v

" No welcome message
set shortmess+=I

colorscheme gruvbox

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE

" Only number of the line is highlighted
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE

let g:goyo_width=82

"Goyo Settings
function! s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()
