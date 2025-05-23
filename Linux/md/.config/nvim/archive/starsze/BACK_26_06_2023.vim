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

    Plug 'mhinz/vim-startify'           " Startify

    Plug 'sainnhe/sonokai'              " Colorscheme sonokai
    Plug 'morhetz/gruvbox'              " Colorscheme gruvbox

    Plug 'rbgrouleff/bclose.vim'        " Ranger prerequisite
    Plug 'francoiscabrol/ranger.vim'    " Ranger

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    Plug 'farmergreg/vim-lastplace'     " Open file at the place, the coursor was at
    Plug 'ap/vim-css-color'             " CSS color preview
    Plug 'tpope/vim-commentary'         " gcc or gc
    Plug 'preservim/tagbar'             " Tagbar, leader + c (table of contents)
                                        " I need to have ctag installed, eg.:
                                        "   sudo apt install universal-ctags
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

" Numbers
set colorcolumn=76

" Searching
set ignorecase smartcase incsearch complete+=s showmatch hlsearch

set path+=**

" Spaces instead of tabs
set expandtab softtabstop=4 shiftwidth=4 tabstop=4

set wrap linebreak smartindent tw=74

set backspace=indent,eol,start

set display+=lastline
set scrolloff=10

" Don't add double space after dot at the end of the line
set nojoinspaces

" Open split on the right/below
set splitbelow splitright

" Copy to clipboard
set clipboard^=unnamed,unnamedplus

" Hold my beer
set noswapfile nobackup

" For .txt and .md i need autoindent (smartindent caused problems) and
" different format options
autocmd BufRead,BufNewFile   *.txt set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=tawc nosmartindent autoindent

" Complete by ctrl-x + ctrl-... in insert mode
set omnifunc=syntaxcomplete#Complete

syntax on

" Let it be, it's ok on TMUX and allows for scrolling
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => nnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-f> ggvG$
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
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
set spellsuggest=best,13
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=

nnoremap <f8> :setlocal norelativenumber!<enter>
nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>

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

vnoremap j gj
vnoremap k gk
vnoremap <C-k> k
vnoremap <C-j> j
vnoremap <C-h> h
vnoremap <C-l> l

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

" Tabs
nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<cr>
nnoremap <silent> <leader>p :tabprev<cr>
nnoremap <silent> <leader>tn :tabm +1<CR>
nnoremap <silent> <leader>tp :tabm -1<CR>
nnoremap <silent> <leader>tw :tabclose<CR>
nnoremap <silent> <leader>tz :tabnew<CR>:terminal<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 10gt

" Adding things
nnoremap <silent> <leader>ab viwc****<Esc>hP
nnoremap <silent> <leader>ai viwc**<Esc>P
nnoremap <silent> <leader>a$ viwc$$<Esc>P
nnoremap <silent> <leader>a( viwc()<Esc>P
nnoremap <silent> <leader>a« viwc«»<Esc>P
nnoremap <silent> <leader>a{ viwc{}<Esc>P
nnoremap <silent> <leader>a[ viwc[]<Esc>P
nnoremap <silent> <leader>a' viwc''<Esc>P
nnoremap <silent> <leader>a" viwc""<Esc>P

nnoremap <silent> <leader>al a[]()<esc>i
nnoremap <silent> <leader>ap a![]()<esc>i
nnoremap <silent> <leader>as 43o<esc>43k$zz
nnoremap <silent> <leader>aa 7o<esc>7k$zz
nnoremap <silent> <leader>a1 I# 
nnoremap <silent> <leader>a2 I## 
nnoremap <silent> <leader>a3 I### 
nnoremap <silent> <leader>a4 I#### 
nnoremap <silent> <leader>a5 I##### 

vnoremap <silent> <leader>ab c****<Esc>hP
vnoremap <silent> <leader>ai c**<Esc>P
vnoremap <silent> <leader>a$ c$$<Esc>P
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
nnoremap <leader>st :set filetype=

" Deleting things
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>
nnoremap <silent> <leader>d$ ?\$<cr>x/\$<cr>x:noh<cr>
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

" Store session
nnoremap <leader>zs :mks! ~/Dokumenty/linux/Linux/md/my_session.vim<cr>
nnoremap <leader>zo :so ~/Dokumenty/linux/Linux/md/my_session.vim<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File search
nnoremap <leader>ff :Files ~/<CR>
nnoremap <leader>fh :tabnew<CR>:Files ~/<CR>
nnoremap <leader>fn :tabnew<CR>:Files ~/Dokumenty/Notatki/<CR>
nnoremap <leader>fc :tabnew<CR>:Files ~/.config/<CR>

" Line search
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fb :BLines<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => RANGER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ranger_map_keys = 0
map <leader>rr :RangerCurrentDirectory<CR>
map <leader>rt :tabnew<CR>:Ranger<CR>
map <leader>rh :tabnew<CR>:cd ~<CR>:Ranger<CR>
map <leader>rn :tabnew<CR>:cd ~/Dokumenty/Notatki<CR>:Ranger<CR>
map <leader>rc :tabnew<CR>:cd ~/.config<CR>:Ranger<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TAGBAR
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
" => SONOKAI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" I changed the way sonokai does some things
    " call sonokai#highlight('markdownItalic', s:palette.blue, s:palette.none, 'italic')
    " call sonokai#highlight('markdownBold', s:palette.purple, s:palette.none, 'bold')

" source ~/.config/nvim/sonokai.vim

" " Hashes before headings
" hi! link markdownHeadingDelimiter Red

" " Color of current line number
" hi! CursorLineNr ctermfg=110

" " Reversed colors in visual mode
" hi! Visual cterm=reverse

" " Better tab colors
" hi! TabLineSel ctermfg=203 ctermbg=235

" " Sonokai

" au InsertEnter * hi User1 cterm=bold ctermfg=203 ctermbg=236
" au InsertLeave * hi User1 cterm=bold ctermfg=110 ctermbg=236

" au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=203
" au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=110

" hi statusline cterm=none ctermfg=249 ctermbg=239
" hi statuslineNC cterm=none ctermfg=249 ctermbg=236

" hi User1 cterm=bold ctermfg=110 ctermbg=236
" hi User4 cterm=none ctermfg=248 ctermbg=237
" hi User5 cterm=bold ctermfg=249 ctermbg=236
" hi User9 cterm=bold ctermfg=236 ctermbg=110

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

" Better tab colors
hi! TabLineSel ctermfg=166 ctermbg=235

" Statusline
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
    set guifont=Fantasque\ Sans\ Mono:h12
    colorscheme gruvbox
    set cursorline
    set relativenumber
    set scrolloff=8

    let g:gruvbox_italic = '1'

    hi! TabLineSel guifg=#d75f00 guibg=#303030

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
hi Normal ctermbg=NONE
" Only number of the line is highlighted
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

" Just for nice statusline
set filetype=none

set laststatus=2
set statusline=

set statusline=%9*\ %*%1*\ %t\ %M\ %9*\ %*%=%4*\ %p%%\ %5*\ %l:\ %2v\ %*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"      _  ___     _                        _     _    
"     | |/ (_)___| | _____      _____   __| |___| | __
"     | ' /| / __| |/ _ \ \ /\ / / _ \ / _` |_  / |/ /
"     | . \| \__ \ | (_) \ V  V / (_) | (_| |/ /|   < 
"     |_|\_\_|___/_|\___/ \_/\_/ \___/ \__,_/___|_|\_\ 
"    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
