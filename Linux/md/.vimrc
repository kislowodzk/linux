" Żeby nie zostawiać na końcu linii jednoliterowych słów
setlocal formatoptions=1

" Numery
set number relativenumber

setlocal noexpandtab

" Ustawienia wyszukiwania
set ignorecase
set incsearch
set complete+=s

" Poniższe linijki, jeśli chcę, żeby tabulację zastępowały znaki spacji
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set tabstop=4

setlocal wrap
setlocal linebreak
set tw=80
set display+=lastline
set backspace=indent,eol,start
set scrolloff=8

map <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l
" nnoremap <space> :w<cr> " wyłączam, żeby wyrobić pamięć mięśniową
" nie, żebym tego używał, bardziej chodzi po prostu o to, żeby nie włączać dziwnego trybu
nnoremap Q gq

" Pokazuj białe znaki
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f5> :set nolist<enter>
nnoremap <f6> :set list<enter>

"Słownik
set spellcapcheck=
nnoremap <f8> :set spell spelllang=<enter>
nnoremap <f9> :set spell spelllang=pl_pl,en_us<enter>

" Żeby split automatycznie otwierał się po prawej/na dole
set splitbelow splitright

" Żeby nie dodawał podwójnej spacji po kropce na końcu zdania
set nojoinspaces

set clipboard^=unnamed,unnamedplus
set showmatch
set hlsearch
nnoremap <CR> :noh<CR><CR>:<backspace>

autocmd BufRead,BufNewFile   *.txt set fo+=tawc
autocmd BufRead,BufNewFile   *.md set fo+=tawc

set omnifunc=syntaxcomplete#Complete

" Zmiana kursora w zależności od trybu
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Żeby zmiana kursora następowała natychmiast (żeby nie czekał na następny znak)
set timeoutlen=1000
set ttimeoutlen=1


" mkdir -p ~/.vim/pack/themes/start
" cd ~/.vim/pack/themes/start
" git clone https://github.com/dracula/vim.git dracula
packadd! dracula
syntax enable
colorscheme dracula
highlight Normal guibg=none
