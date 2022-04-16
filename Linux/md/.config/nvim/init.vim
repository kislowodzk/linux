" Żeby nie zostawiać na końcu linii jednoliterowych słów
setlocal formatoptions+=1

" Numery
set number relativenumber

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
set scrolloff=10

" Żeby nie dodawał podwójnej spacji po kropce na końcu zdania
set nojoinspaces

" Żeby split automatycznie otwierał się po prawej/na dole
set splitbelow splitright

set clipboard^=unnamed,unnamedplus
set showmatch
set hlsearch

" smartindent nie tylko do nowej linii stosuje indent linii poprzedniej (to funkcja
" autoindent), ale także na podstawie składni stosuje odpowiednią indentację linii 
" następnej
set smartindent

nnoremap <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l

" Nie, żebym tego używał, bardziej chodzi po prostu o to, żeby nie włączać dziwnego trybu
nnoremap Q gq

" Pokazuj białe znaki
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f5> :set nolist<enter>
nnoremap <f6> :set list<enter>

"Słownik
set spellcapcheck=
nnoremap <f8> :set spell spelllang=<enter>
nnoremap <f9> :set spell spelllang=pl_pl,en_us<enter>
nnoremap <silent> <CR> :noh<CR>

" Omnifunc uzupełnianie przez ctrl-x w trybie wprowadzania
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

cnoremap W w
cnoremap Q q

" Podświetlenie obecnej linii
set cursorline

" Nazwa pliku na dole
set laststatus=2
set statusline=
set statusline=%t\ %M\ %=\ %y\ %{&fileencoding?&fileencoding:&encoding}\ \[%{&fileformat}\]\ %l/%L:\ %v

" Brak początkowej wiadomości przy uruchamianiu
set shortmess+=I

syntax on

" Sprawdzaj też w podfolderach
set path+=**

" Leader
let mapleader = " "

" Wyszukiwanie pliku
nnoremap <leader>f :find 

" Kilka okien
nnoremap <leader>v :wincmd s<CR>
nnoremap <leader>s :wincmd v<CR>

nnoremap <silent> <leader>h :vertical resize +5<CR>
nnoremap <silent> <leader>l :vertical resize -5<CR>
nnoremap <silent> <leader>k :resize +1<CR>
nnoremap <silent> <leader>j :resize -1<CR>

" Zakładki
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>p :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

" NerdTree
nnoremap <silent> <leader>q :NERDTree<CR>

" Tagbar
nnoremap <silent> <leader>b :Tagbar<CR>

call plug#begin()
    " Muszę mieć zainstalowanego nvmia, gita, curla
    " Instalacja vmipluga:
    "       https://github.com/junegunn/vim-plug
    " Potem:
    " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    "       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " Potem w pliku:
    " :PlugInstall
    " :PlugClean
    Plug 'dracula/vim'              " colorscheme dracula
    Plug 'morhetz/gruvbox'          " colorscheme gruvbox
    Plug 'preservim/nerdtree'       " nerdtree, leader + q
                                        " t -- open in new tab
                                        " T -- open in new tab silently
                                        " i -- open split down
                                        " s -- open split right
                                        " I -- hidden files on/off
                                        " u -- up a dir
    Plug 'preservim/tagbar'         " tagbar z boku, leader + b
    Plug 'tpope/vim-commentary'     " gcc albo gc w visual komentuje linię
    Plug 'tpope/vim-surround'       " surround
                                        " W trybie normal:
                                            " ys iw (
                                            " ds (
                                            " cs iw ([
                                            " yss(
                                            " ( ze spacją pomiędzy
                                            " ) bez spacji pomiędzy
                                        " W trybie visual:
                                            " S)
                                        " W trybie visual line
                                            " S), ale wstawia znaki w liniach przed
                                            " i po
call plug#end()

colorscheme gruvbox

" Dla txt i md wyłączam smartindent, bo powodował problemy
autocmd BufRead,BufNewFile   *.txt set fo=1tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=1tawc nosmartindent autoindent 

" Żeby terminal był przezroczysty
hi Normal guibg=NONE ctermbg=NONE

" Żeby linia była zaznaczona bez koloru
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE

