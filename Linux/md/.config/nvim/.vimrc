set nocompatible

set ignorecase smartcase incsearch complete+=s showmatch hlsearch
set path+=**

set expandtab softtabstop=4 shiftwidth=4 tabstop=4
set wrap linebreak smartindent tw=74
set backspace=indent,eol,start

set display+=lastline
set scrolloff=10
set nojoinspaces
set splitbelow splitright

set clipboard^=unnamed,unnamedplus
set noswapfile nobackup

set fo=croql
autocmd BufRead,BufNewFile   *.txt set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.wiki set fo=tawc nosmartindent autoindent

set omnifunc=syntaxcomplete#Complete

syntax on

set rnu nu

nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap <C-k> k
nnoremap <C-j> j
nnoremap <C-h> h
nnoremap <C-l> l

nnoremap Q gq

nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>

nnoremap <silent> <CR> :noh<CR>
nnoremap <silent> <leader>q :noh<CR>
nnoremap <silent> <leader>h :noh<CR>

nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <C-Space> :w<CR>
inoremap <C-Space> <Esc>:w<cr>
inoremap <C-j> <CR>- 
cnoremap W w
cnoremap Q q
vmap < <gv
vmap > >gv

vnoremap j gj
vnoremap k gk
vnoremap <C-k> k
vnoremap <C-j> j
vnoremap <C-h> h
vnoremap <C-l> l

inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

let mapleader = " "

nnoremap <silent> <leader>ab viwc****<Esc>hPe
nnoremap <silent> <leader>ai viwc**<Esc>Pe
nnoremap <silent> <leader>au viwc__<Esc>Pe
nnoremap <silent> <leader>as 43o<esc>43k$zz
nnoremap <silent> <leader>aa 11o<esc>11k$zz

vnoremap <silent> <leader>ab c****<Esc>hPe
vnoremap <silent> <leader>ai c**<Esc>Pe
vnoremap <silent> <leader>au c__<Esc>Pe

nnoremap <leader>sl :set tw=99999<cr>
nnoremap <leader>ss :set tw=74<cr>
nnoremap <leader>sf :set fo=tawc<cr>
nnoremap <leader>sF :set fo=croql<cr>
nnoremap <leader>st :set filetype=

nnoremap <silent> <leader>me G{}k$zz

nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<cr>
nnoremap <silent> <leader>p :tabprev<cr>
nnoremap <silent> <leader>tn :tabm +1<CR>
nnoremap <silent> <leader>tp :tabm -1<CR>
nnoremap <silent> <leader>tw :tabclose<CR>
nnoremap <silent> <leader>tz :tabnew<CR>:terminal<CR>

set timeoutlen=1000
set ttimeoutlen=1

set shortmess+=I

nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>
nnoremap <f8> :setlocal rnu! nu!<enter>

set spellcapcheck=
set spellsuggest=best,13
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us,de<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=

set listchars=space:·,trail:•,eol:¶
nnoremap <f10> :setlocal list!<enter>

colorscheme default

