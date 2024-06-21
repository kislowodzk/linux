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
    Plug 'vimwiki/vimwiki'
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
autocmd BufRead,BufNewFile   *.wiki set fo=tawc nosmartindent autoindent

" Complete by ctrl-x + ctrl-... in insert mode
set omnifunc=syntaxcomplete#Complete

syntax on

set rnu nu

" Let it be, it's ok on TMUX and allows for scrolling
" set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => nnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-f> gg0vG$
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
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us,de<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=

nnoremap <f8> :setlocal rnu! nu!<enter>
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

" Statistics of file
nnoremap <silent> <leader>g g<C-g>

" Clean Highligt after searching
nnoremap <silent> <leader>q :noh<CR>
nnoremap <silent> <leader>h :noh<CR>

" Tabs
nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>T :tabnew<CR>
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
nnoremap <silent> <leader>ab viwc****<Esc>hPe
nnoremap <silent> <leader>ai viwc**<Esc>Pe
nnoremap <silent> <leader>au viwc__<Esc>Pe
nnoremap <silent> <leader>a$ viwc$$<Esc>Pe
nnoremap <silent> <leader>a( viwc()<Esc>Pe
nnoremap <silent> <leader>a« viwc«»<Esc>Pe
nnoremap <silent> <leader>a{ viwc{}<Esc>Pe
nnoremap <silent> <leader>a[ viwc[]<Esc>Pe
nnoremap <silent> <leader>a' viwc''<Esc>Pe
nnoremap <silent> <leader>a" viwc""<Esc>Pe
nnoremap <silent> <leader>ac viwc""<Esc>Pe

nnoremap <silent> <leader>al a[]()<esc>i
nnoremap <silent> <leader>ap a![]()<esc>i
nnoremap <silent> <leader>as 43o<esc>43k$zz
nnoremap <silent> <leader>aa 11o<esc>11k$zz
nnoremap <silent> <leader>a1 I# 
nnoremap <silent> <leader>a2 I## 
nnoremap <silent> <leader>a3 I### 
nnoremap <silent> <leader>a4 I#### 
nnoremap <silent> <leader>a5 I##### 

vnoremap <silent> <leader>ab c****<Esc>hPe
vnoremap <silent> <leader>ai c**<Esc>Pe
vnoremap <silent> <leader>au c__<Esc>Pe
vnoremap <silent> <leader>a$ c$$<Esc>Pe
vnoremap <silent> <leader>a( c()<Esc>Pe
vnoremap <silent> <leader>a« c«»<Esc>Pe
vnoremap <silent> <leader>a{ c{}<Esc>Pe
vnoremap <silent> <leader>a[ c[]<Esc>Pe
vnoremap <silent> <leader>a' c''<Esc>Pe
vnoremap <silent> <leader>a" c""<Esc>Pe
vnoremap <silent> <leader>ac c""<Esc>Pe

" Formatting
nnoremap <leader>sl :set tw=99999<cr>
nnoremap <leader>ss :set tw=74<cr>
nnoremap <leader>sf :set fo=tawc<cr>
nnoremap <leader>sF :set fo=jcroql<cr>
nnoremap <leader>sc :set fo=jcroql<cr>
nnoremap <leader>st :set filetype=

" Deleting things
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>
nnoremap <silent> <leader>du ?\_<cr>x/\_<cr>x:noh<cr>
nnoremap <silent> <leader>d$ ?\$<cr>x/\$<cr>x:noh<cr>
nnoremap <silent> <leader>db ?\*\*<cr>xx/\*\*<cr>xx:noh<cr>
nnoremap <silent> <leader>d( ?(<cr>x/)<cr>x:noh<cr>
nnoremap <silent> <leader>d[ ?[<cr>x/]<cr>x:noh<cr>
nnoremap <silent> <leader>d{ ?{<cr>x/}<cr>x:noh<cr>
nnoremap <silent> <leader>d' ?'<cr>x/'<cr>x:noh<cr>
nnoremap <silent> <leader>d" ?"<cr>x/"<cr>x:noh<cr>
nnoremap <silent> <leader>dc ?"<cr>x/"<cr>x:noh<cr>

" Moving
nnoremap <silent> <leader>me G{}k$zz
nnoremap <silent> <leader>m1 ?^# <cr>
nnoremap <silent> <leader>m2 ?^## <cr>
nnoremap <silent> <leader>m3 ?^### <cr>
nnoremap <silent> <leader>m4 ?^#### <cr>
nnoremap <silent> <leader>m5 ?^##### <cr>

nnoremap <silent> <leader>m! ?^= <cr>
nnoremap <silent> <leader>m@ ?^== <cr>
nnoremap <silent> <leader>m# ?^=== <cr>
nnoremap <silent> <leader>m$ ?^==== <cr>
nnoremap <silent> <leader>m% ?^===== <cr>


" Store session
nnoremap <leader>zs :mks! ~/Dokumenty/linux/Linux/md/my_session.vim<cr>
nnoremap <leader>zo :so ~/Dokumenty/linux/Linux/md/my_session.vim<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File search
nnoremap <leader>ff :Files ~/<CR>
nnoremap <leader>F :Files ~/<CR>
nnoremap <leader>fh :Files ~/<CR>
nnoremap <leader>fn :Files ~/Dokumenty/Notatki/<CR>
nnoremap <leader>fw :Files ~/vimwiki/<CR>
nnoremap <leader>fc :Files ~/.config/<CR>

" Line search
" all buffers
nnoremap <leader>fb :Lines<CR>  
" only this buffer
nnoremap <leader>fl :BLines<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => RANGER
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:ranger_map_keys = 0
map <leader>rr :RangerCurrentDirectory<CR>
map <leader>R :RangerCurrentDirectory<CR>
map <leader>rt :tabnew<CR>:Ranger<CR>
map <leader>rh :cd ~<CR>:Ranger<CR>
map <leader>rn :cd ~/Dokumenty/Notatki<CR>:Ranger<CR>
map <leader>rn :cd ~/vimwiki<CR>:Ranger<CR>
map <leader>rc :cd ~/.config<CR>:Ranger<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TAGBAR
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tagbar / table of contents
nnoremap <silent> <leader>c :Tagbar<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VimWiki
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vimwiki_global_ext = 0
" Tutaj uwaga -- jeśli chodzi o formatoptions, to vimwiki zmienia to jako
" ostatni. Więc jeśli tego nie chcę, to komendą:
" :verb set fo
" mogę sprawdzić, gdzie ostatnio była dokonana zmiana opcji formatowania. 
" Mogę tam wejść i dodać ręcznie na końcu
" set fo=tawc nosmartindent autoindent 

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

