" Żeby nie zostawiać na końcu linii jednoliterowych słów
setlocal formatoptions+=1

" Numery
set number relativenumber

setlocal noexpandtab

" Ustawienia wyszukiwania
set ignorecase
set smartcase
set incsearch
set complete+=s

" Poniższe linijki, jeśli chcę, żeby tabulację zastępowały znaki spacji
set expandtab
set softtabstop=4
set shiftwidth=4
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
nnoremap <silent> <CR> :noh<CR><CR>:<backspace>

" smartindent nie tylko do nowej linii stosuje indent linii poprzedniej (to funkcja
" autoindent), ale także na podstawie składni stosuje odpowiednią indentację linii 
" następnej
set smartindent

" dla txt i md wyłączam smartindent, bo powodował problemy
autocmd BufRead,BufNewFile   *.txt set fo=1tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=1tawc nosmartindent autoindent 

set omnifunc=syntaxcomplete#Complete

" Zmiana kursora w zależności od trybu
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Żeby zmiana kursora następowała natychmiast (żeby nie czekał na następny znak)
set timeoutlen=1000
set ttimeoutlen=1

" RADY THEPRIMEAGEN'A
" Y kopiuje (jak można by się spodziewać) do końca linii
nnoremap Y y$

" Szukana linia będzie na środku
nnoremap n nzzzv
nnoremap N Nzzzv

" Break pointy do undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap - -<c-g>u
inoremap ; ;<c-g>u
inoremap : :<c-g>u
inoremap # #<c-g>u

" Podświetlenie obecnej linii
set cursorline

" Brak początkowej wiadomości przy uruchamianiu
set shortmess+=I

syntax on

" Leader
let mapleader = " "

" Kilka okien
nnoremap <leader>q :wincmd v<bar> :wincmd h<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>s :wincmd s<CR>
nnoremap <leader>v :wincmd v<CR>

nnoremap <silent> <leader>h :vertical resize +5<CR>
nnoremap <silent> <leader>l :vertical resize -5<CR>
nnoremap <silent> <leader>k :resize +1<CR>
nnoremap <silent> <leader>j :resize -1<CR>

" Zakładki
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>p :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'

    Plug 'preservim/nerdtree'

    Plug 'dracula/vim'
    " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    "       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " Potem w pliku
    " :PlugInstall
    " :PlugClean
call plug#end()

colorscheme dracula

" Żeby terminal był przezroczysty
hi Normal guibg=NONE ctermbg=NONE

" Żeby linia była zaznaczona bez koloru
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE


