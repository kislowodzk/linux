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
    
    " Colorschemes:
    Plug 'morhetz/gruvbox'          " Colorscheme gruvbox

    " Other_plugins:
    Plug 'farmergreg/vim-lastplace' " Open file at the place, the coursor was at
    Plug 'ap/vim-css-color'         " CSS color preview
    Plug 'tpope/vim-commentary'     " gcc or gc
    Plug 'preservim/tagbar'         " Tagbar, leader + c (table of contents)
                                    " I need to have ctag installed, eg.:
                                    "   sudo apt install universal-ctags
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Numbers
set nonumber norelativenumber
nnoremap <f8> :setlocal number! relativenumber!<enter>

" Searching
set ignorecase
set smartcase
set incsearch
set complete+=s
set showmatch
set hlsearch

set path+=**

" Spaces instead of tabs
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

set wrap
set linebreak
set tw=74
set display+=lastline
set backspace=indent,eol,start
set scrolloff=8

" Don't add double space after dot at the end of the line
set nojoinspaces

" Open split on the right/below
set splitbelow splitright

set clipboard^=unnamed,unnamedplus

set smartindent

" For .txt and .md i need autoindent (smartindent caused problems) and different format options
autocmd BufRead,BufNewFile   *.txt set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=tawc nosmartindent autoindent

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
nnoremap j gj
nnoremap k gk
nnoremap <C-k> k
nnoremap <C-j> j
nnoremap <C-h> h
nnoremap <C-l> l

" I don't want that weird Q mode
nnoremap Q gq

" Show white characters
" set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
set listchars=space:·,trail:•,eol:¶
nnoremap <f10> :setlocal list!<enter>

" Spellcheck
set spellcapcheck=
set spellsuggest=best,16
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us<enter>
nnoremap [s [szz
nnoremap ]s ]szz

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

" Escape and save
inoremap <C-Space> <Esc>:w<cr>

" ctrl-b gives two asterisks (for bold in markdown)
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

" Tags
nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>tn :tabnext<CR>
nnoremap <silent> <leader>tp :tabprevious<CR>
nnoremap <silent> <leader>tw :tabclose<CR>

" Adding things
nnoremap <silent> <leader>ab viwc****<Esc>hP
nnoremap <silent> <leader>ai viwc**<Esc>P
nnoremap <silent> <leader>a( viwc()<Esc>P
nnoremap <silent> <leader>a« viwc«»<Esc>P
nnoremap <silent> <leader>a{ viwc{}<Esc>P
nnoremap <silent> <leader>a[ viwc[]<Esc>P
nnoremap <silent> <leader>a' viwc''<Esc>P
nnoremap <silent> <leader>a" viwc""<Esc>P

nnoremap <silent> <leader>al a[]()<esc>i
nnoremap <silent> <leader>ap a![]()<esc>i
nnoremap <silent> <leader>as 25o<esc>25k$zz
nnoremap <silent> <leader>a1 I# 
nnoremap <silent> <leader>a2 I## 
nnoremap <silent> <leader>a3 I### 
nnoremap <silent> <leader>a4 I#### 
nnoremap <silent> <leader>a5 I##### 

vnoremap <silent> <leader>ab c****<Esc>hP
vnoremap <silent> <leader>ai c**<Esc>P
vnoremap <silent> <leader>a( c()<Esc>P
vnoremap <silent> <leader>a« c«»<Esc>P
vnoremap <silent> <leader>a{ c{}<Esc>P
vnoremap <silent> <leader>a[ c[]<Esc>P
vnoremap <silent> <leader>a' c''<Esc>P
vnoremap <silent> <leader>a" c""<Esc>P

" Formatting
nnoremap <leader>sl :set tw=10000<cr>
nnoremap <leader>ss :set tw=74<cr>
nnoremap <leader>sf :set fo=tawc<cr>
nnoremap <leader>z zz

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NETRW
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:netrw_liststyle = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25

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
" => APPEARANCE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Coursor line lighlight
set cursorline

" Make coursor change immidiate (in neovim default ttimeoutlen value is 50)
set timeoutlen=1000
set ttimeoutlen=1

" No welcome message
set shortmess+=I

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE
" Only number of the line is highlighted
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => STATUSLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Just for nice statusline
set filetype=none

set laststatus=2
set statusline=

" Basic separators
set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%3*\ %{&fileencoding?&fileencoding:&encoding}\ [%{&fileformat}]\ %4*\ %{&filetype}\ %5*\ %l/%6*%L:\ %5*%2v\ %*

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NEOVIDE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("g:neovide")
    let g:neovide_hide_mouse_when_typing = v:true
    " set guifont=DejaVu\ Sans\ Mono:h11
    set guifont=Monaco\ Nerd\ Font\ Mono:h10
    colorscheme gruvbox

    set filetype=none
    set laststatus=2
    set statusline=
    set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%3*\ %{&fileencoding?&fileencoding:&encoding}\ [%{&fileformat}]\ %4*\ %{&filetype}\ %5*\ %l/%6*%L:\ %5*%2v\ %*
    
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      _  ___     _                        _     _    
"     | |/ (_)___| | _____      _____   __| |___| | __
"     | ' /| / __| |/ _ \ \ /\ / / _ \ / _` |_  / |/ /
"     | . \| \__ \ | (_) \ V  V / (_) | (_| |/ /|   < 
"     |_|\_\_|___/_|\___/ \_/\_/ \___/ \__,_/___|_|\_\ 
"    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
