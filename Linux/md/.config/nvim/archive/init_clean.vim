"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme default

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

" Make coursor change immidiate (in neovim default ttimeoutlen value is 50)
set timeoutlen=1000
set ttimeoutlen=1

" No welcome message
set shortmess+=I

" Make background transparent
hi Normal ctermbg=NONE
" Only number of the line is highlighted
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

