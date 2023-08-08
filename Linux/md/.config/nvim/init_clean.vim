"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

set tw=10000

" Searching
set ignorecase smartcase incsearch complete+=s showmatch hlsearch

" Spaces instead of tabs
set noexpandtab softtabstop=4 shiftwidth=4 tabstop=4

set wrap linebreak nosmartindent autoindent

set backspace=indent,eol,start

set display+=lastline
set scrolloff=8

" Don't add double space after dot at the end of the line
set nojoinspaces

" Copy to clipboard
set clipboard^=unnamed,unnamedplus

" Hold my beer
set noswapfile nobackup

set fo=tawc

" Complete by ctrl-x + ctrl-... in insert mode
set omnifunc=syntaxcomplete#Complete

syntax on

set mouse=a

nnoremap <C-f> ggvG$
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap <C-k> k
nnoremap <C-j> j
nnoremap <C-h> h
nnoremap <C-l> l

nnoremap Q gq

set spellcapcheck=
set spellsuggest=best,13
set spell spelllang=pl_pl,en_us
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
nnoremap <silent> <leader>w :Ex<CR>
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

call plug#begin()
    Plug 'sainnhe/sonokai'              " Colorscheme sonokai
call plug#end()


source ~/.config/nvim/sonokai.vim

" Hashes before headings
hi! link markdownHeadingDelimiter Red

" Color of current line number
hi! CursorLineNr ctermfg=110

" Reversed colors in visual mode
hi! Visual cterm=reverse

" Better tab colors
hi! TabLineSel ctermfg=203 ctermbg=235
au InsertEnter * hi User1 cterm=bold ctermfg=203 ctermbg=236
au InsertLeave * hi User1 cterm=bold ctermfg=110 ctermbg=236

au InsertEnter * hi User9 cterm=bold ctermfg=236 ctermbg=203
au InsertLeave * hi User9 cterm=bold ctermfg=236 ctermbg=110

hi statusline cterm=none ctermfg=249 ctermbg=239
hi statuslineNC cterm=none ctermfg=249 ctermbg=236

hi User1 cterm=bold ctermfg=110 ctermbg=236
hi User4 cterm=none ctermfg=248 ctermbg=237
hi User5 cterm=bold ctermfg=249 ctermbg=236
hi User9 cterm=bold ctermfg=236 ctermbg=110


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

