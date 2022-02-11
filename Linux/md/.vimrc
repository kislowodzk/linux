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
" Z dwóch poniższych trzeba wybrać jedno.
set number relativenumber
" set number
set tw=80
map <f4> :e /home/kislowodzk/Notatki/ToDo.md<enter>
map <C-f> ggvG$
" nnoremap j :m+<Enter>
" nnoremap k :m-2<Enter>
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l
set display+=lastline
set backspace=indent,eol,start
set scrolloff=10
" Uwaga, jeśli linia będzie się kończyła białym znakiem takim jak spacja, to
" mogą być problemy z automatycznym łączeniem linii
set fo+=t
set fo+=a
set fo+=w
"set fo=aw2tq
nnoremap <space> :w<cr>
" Pozazuj białe znaki
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f6> :set list<enter>
" Nie pokazuj białych znaków
nnoremap <f5> :set nolist<enter>
" Żeby nie dodawał podwójnej spacji po kropce na końcu zdania
set nojoinspaces

