setlocal formatoptions=1
setlocal noexpandtab
set ignorecase
set incsearch
set complete+=s
set formatprg=par
set autoindent
set tabstop=4

" Poniższe dwie linijki, jeśli chcę, żeby tabulację zastępowały znaki spacji
set expandtab
set softtabstop=4
set shiftwidth=4
setlocal wrap
setlocal linebreak
set number relativenumber
set tw=80
map <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l
set display+=lastline
set backspace=indent,eol,start
set scrolloff=8
nnoremap <space> :w<cr>

" Pozazuj białe znaki
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f6> :set list<enter>

" Nie pokazuj białych znaków
nnoremap <f5> :set nolist<enter>

"Słownik
set spellcapcheck=
nnoremap <f8> :set spell spelllang=<enter>
nnoremap <f9> :set spell spelllang=pl_pl,en_us<enter>

" Żeby nie dodawał podwójnej spacji po kropce na końcu zdania
set nojoinspaces
set clipboard^=unnamed,unnamedplus
set showmatch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>

autocmd BufRead,BufNewFile   *.txt set fo+=tawc
autocmd BufRead,BufNewFile   *.md set fo+=tawc

