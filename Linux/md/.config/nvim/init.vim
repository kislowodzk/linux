"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              ___       _ _         _           
"             |_ _|_ __ (_) |___   _(_)_ __ ___  
"              | || '_ \| | __\ \ / / | '_ ` _ \ 
"              | || | | | | |_ \ V /| | | | | | |
"             |___|_| |_|_|\__(_)_/ |_|_| |_| |_|
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
    " I need to have neovim, git and curl installed
    " Vimplug install -- https://github.com/junegunn/vim-plug:
    " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    "       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " :PlugInstall
    " :PlugClean
    
    " Colorschemes
    Plug 'sainnhe/everforest'           " Colorscheme everforest
    Plug 'morhetz/gruvbox'              " Colorscheme gruvbox
    Plug 'tanvirtin/monokai.nvim'       " Colorscheme monokai -- monokai_pro
    Plug 'haishanh/night-owl.vim'       " Colorscheme night-owl
    Plug 'rmehri01/onenord.nvim'        " Colorscheme onenord

    " Other_plugins:
    Plug 'mhinz/vim-startify'       " Welcome screen
    Plug 'junegunn/goyo.vim'        " Goyo -- focus mode
    Plug 'preservim/tagbar'         " Tagbar, leader + c (table of contents)
                                    " I need to have ctag installed, eg.:
                                        " sudo apt install universal-ctags
    Plug 'tpope/vim-commentary'     " gcc or gc
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't leave one letter words at the end of the line
setlocal formatoptions+=1

" Numbers
set number relativenumber

" Searching
set ignorecase
set smartcase
set incsearch
set complete+=s
set showmatch
set hlsearch

set path+=**

" It works automatically in nvim
" Display all matching files when we tab complete
" set wildmenu

" Spaces instead of tabs
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

set wrap
set linebreak
set tw=80
set display+=lastline
set backspace=indent,eol,start
set scrolloff=15

" Don't add double space after dot at the end of the line
set nojoinspaces

" Open split on the right/below
set splitbelow splitright

set clipboard^=unnamed,unnamedplus

set smartindent

" For .txt and .md i need autoindent (smartindent caused problems) and different format options
autocmd BufRead,BufNewFile   *.txt set fo=1tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=1tawc nosmartindent autoindent

" Complete by ctrl-x + ctrl-... in insert mode
set omnifunc=syntaxcomplete#Complete

syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => nnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l

" I don't want that weird Q mode
nnoremap Q gq

" Show white characters
set listchars=tab:???\ ,space:??,nbsp:???,trail:???,eol:??
nnoremap <f10> :setlocal list!<enter>

" Spellcheck
set spellcapcheck=
set spellsuggest=best,20
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us<enter>
nnoremap [s [szt
nnoremap ]s ]szt

" Stop highlighting searching results
nnoremap <silent> <CR> :noh<CR>

" Y yanks to the end of the line
nnoremap Y y$

" Centers line with match
nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <C-Space> :w<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => inoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Breakpoints for undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap - -<c-g>u
inoremap ; ;<c-g>u
inoremap : :<c-g>u
inoremap # #<c-g>u

" Escape and save
inoremap <C-Space> <Esc>:w<cr>

" ctrl-l gives two asterisks (for bold in markdown)
inoremap <C-b> **

" ctrl-j in insert mode starts a new line with - and space
inoremap <C-j> <CR>- 

" ctrl-s in insert mode moves coursor line to the middle of the screen
inoremap <C-s> <C-o>zz

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => cnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" To avoid mistypes
cnoremap W w
cnoremap Q q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => vmaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vmap < <gv
vmap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LEADER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +1<CR>
noremap <silent> <C-Down> :resize -1<CR>

" File explorer (netrw)
nnoremap <silent> <leader>e :Ex<CR>
nnoremap <silent> <leader>q :Vex<CR>

" File search
nnoremap <leader>f :find **

" Splits
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>

" Tags
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>N :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

" Adding things
nnoremap <silent> <leader>ab lbi**<esc>ea**<esc>
nnoremap <silent> <leader>ai lbi*<esc>ea*<esc>
nnoremap <silent> <leader>a( lbi(<esc>ea)<esc>
nnoremap <silent> <leader>a{ lbi{<esc>ea}<esc>
nnoremap <silent> <leader>a[ lbi[<esc>ea]<esc>
nnoremap <silent> <leader>a' lbi'<esc>ea'<esc>
nnoremap <silent> <leader>a" lbi"<esc>ea"<esc>

nnoremap <silent> <leader>al a[]()<esc>i
nnoremap <silent> <leader>ap a![]()<esc>i
nnoremap <silent> <leader>as 50o<esc>50k$
nnoremap <silent> <leader>a1 I# 
nnoremap <silent> <leader>a2 I## 
nnoremap <silent> <leader>a3 I### 
nnoremap <silent> <leader>a4 I#### 
nnoremap <silent> <leader>a5 I##### 

vnoremap <silent> <leader>ab c****<Esc>hP
vnoremap <silent> <leader>ai c**<Esc>P
vnoremap <silent> <leader>a( c()<Esc>P
vnoremap <silent> <leader>a{ c{}<Esc>P
vnoremap <silent> <leader>a[ c[]<Esc>P
vnoremap <silent> <leader>a' c''<Esc>P
vnoremap <silent> <leader>a" c""<Esc>P

" Formatting -- to use gq
nnoremap <leader>ll :set tw=10000<cr>
nnoremap <leader>ls :set tw=80<cr>

" Deleting things
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>
nnoremap <silent> <leader>db ?\*\*<cr>xx/\*\*<cr>xx:noh<cr>
nnoremap <silent> <leader>d( ?(<cr>x/)<cr>x:noh<cr>
nnoremap <silent> <leader>d[ ?[<cr>x/]<cr>x:noh<cr>
nnoremap <silent> <leader>d{ ?{<cr>x/}<cr>x:noh<cr>
nnoremap <silent> <leader>d' ?'<cr>x/'<cr>x:noh<cr>
nnoremap <silent> <leader>d" ?"<cr>x/"<cr>x:noh<cr>

" Moving
nnoremap <silent> <leader>me G{}k$zz
nnoremap <silent> <leader>m1 ?^# <cr>
nnoremap <silent> <leader>m2 ?^## <cr>
nnoremap <silent> <leader>m3 ?^### <cr>
nnoremap <silent> <leader>m4 ?^#### <cr>
nnoremap <silent> <leader>m5 ?^##### <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tagbar / table of contents
nnoremap <silent> <leader>c :Tagbar<CR>

" Goyo -- focus mode
nnoremap <silent> <leader>g :Goyo<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NETRW
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GOYO
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width=82

function! s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    hi statusline cterm=none ctermfg=248 ctermbg=239
    hi statuslineNC cterm=none ctermfg=248 ctermbg=236
    hi User1 cterm=bold ctermfg=166 ctermbg=236
    hi User2 cterm=none ctermfg=236 ctermbg=239
    hi User3 cterm=none ctermfg=248 ctermbg=237
    hi User4 cterm=none ctermfg=236 ctermbg=237
    hi User5 cterm=none ctermfg=237 ctermbg=238
    hi User6 cterm=none ctermfg=248 ctermbg=236
    hi User7 cterm=none ctermfg=248 ctermbg=238
    hi User8 cterm=none ctermfg=238 ctermbg=239
    hi User9 cterm=bold ctermfg=236 ctermbg=166
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => STARFIFY IMAGE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:startify_custom_header = [
            \ '   __        ___ _         _                             ',
            \ '   \ \      / (_) |_ __ _ (_) __      __                 ',
            \ '    \ \ /\ / /| | __/ _` || | \ \ /\ / /                 ',
            \ '     \ V  V / | | || (_| || |  \ V  V /                  ',
            \ '      \_/\_/  |_|\__\__,_|/ |   \_/\_/                   ',
            \ '                        |__/                             ',
            \ '    _  ___     _                        _     _          ',
            \ '   | |/ (_)___| | _____      _____   __| |___| | ___   _ ',
            \ '   | ` /| / __| |/ _ \ \ /\ / / _ \ / _` |_  / |/ / | | |',
            \ '   | ` \| \__ \ | (_) \ V  V / (_) | (_| |/ /|   <| |_| |',
            \ '   |_|\_\_|___/_|\___/ \_/\_/ \___/ \__,_/___|_|\_\\__,_|',
            \ ]



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => APPEARANCE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Coursor line lighlight
set cursorline

" Coursor shape -- this matters only in vim, not in neovim
" let &t_SI = "\e[6 q"
" let &t_EI = "\e[2 q"

" Make coursor shape change immidiate (in neovim default value for ttimeoutlen
" is 50
set timeoutlen=1000
set ttimeoutlen=1

set guicursor=i:block

" No welcome message
set shortmess+=I

" Allow italic in the terminal
let g:gruvbox_italic = '1'

colorscheme gruvbox

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE
" Only number of the line is highlighted
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => STATUSLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" If there is filetype, vim will overwrite this -- just for nice statusline
set filetype=none

set laststatus=2
set statusline=

" Slanted transitions
" set statusline=%9*\ %*%1*\ %t\ %M\ %2*???%*%=%8*???%7*\ %{&fileencoding?&fileencoding:&encoding}\ %{&fileformat}\ %5*???%3*\ %{&filetype}\ %4*???%*%6*\ %l/%L:\ %2v\ %1*%*

" Blurred transition of the left panel
set statusline=%9*\ %*%1*\ %t\ %M\ %2*?????????%*%=%7*\ %{&fileencoding?&fileencoding:&encoding}\ %{&fileformat}\ %3*\ %{&filetype}\ %*%6*\ %l/%L:\ %2v\ %1*%*

" No special characters
" set statusline=%9*\ %*%1*\ %t\ %M\ %*%=%7*\ %{&fileencoding?&fileencoding:&encoding}\ %{&fileformat}\ %3*\ %{&filetype}\ %*%6*\ %l/%L:\ %2v\ %1*%*

au InsertEnter * hi User1 cterm=bold ctermfg=3 ctermbg=236
au InsertLeave * hi User1 cterm=bold ctermfg=166 ctermbg=236

au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=3
au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=166

hi statusline cterm=none ctermfg=248 ctermbg=239
hi statuslineNC cterm=none ctermfg=248 ctermbg=236

hi User1 cterm=bold ctermfg=166 ctermbg=236
hi User2 cterm=none ctermfg=236 ctermbg=239
hi User3 cterm=none ctermfg=248 ctermbg=237
hi User4 cterm=none ctermfg=236 ctermbg=237
hi User5 cterm=none ctermfg=237 ctermbg=238
hi User6 cterm=none ctermfg=248 ctermbg=236
hi User7 cterm=none ctermfg=248 ctermbg=238
hi User8 cterm=none ctermfg=238 ctermbg=239
hi User9 cterm=bold ctermfg=236 ctermbg=166

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      _  ___     _                        _     _    
"     | |/ (_)___| | _____      _____   __| |___| | __
"     | ' /| / __| |/ _ \ \ /\ / / _ \ / _` |_  / |/ /
"     | . \| \__ \ | (_) \ V  V / (_) | (_| |/ /|   < 
"     |_|\_\_|___/_|\___/ \_/\_/ \___/ \__,_/___|_|\_\ 
"    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
