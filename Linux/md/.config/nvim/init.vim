"  m    m   "           ""#                             #         #
"  #  m"  mmm     mmm     #     mmm  m     m  mmm    mmm#  mmmmm  #   m
"  #m#      #    #   "    #    #" "# "m m m" #" "#  #" "#     m"  # m"
"  #  #m    #     """m    #    #   #  #m#m#  #   #  #   #   m"    #"#
"  #   "m mm#mm  "mmm"    "mm  "#m#"   # #   "#m#"  "#m##  #mmmm  #  "m
"
"  Miłosz Dudek
"  https://github.com/kislowodzk/linux
"
"  init.vim for neovim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
    " I need to have neovim, git and curl installed
    " Vimplug install -- https://github.com/junegunn/vim-plug:
    " sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    "       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    " In the init.vim
    " :PlugInstall
    " :PlugClean
    Plug 'dracula/vim'              " Colorscheme dracula
    Plug 'morhetz/gruvbox'          " Colorscheme gruvbox
    Plug 'preservim/nerdtree'       " Nerdtree, leader + q
                                        " t -- open in new tab
                                        " T -- open in new tab silently
                                        " i -- open split down
                                        " s -- open split right
                                        " I -- hidden files on/off
                                        " u -- up a dir
    Plug 'preservim/tagbar'         " Tagbar, leader + b
                                    " I need to have ctag installed, eg.:
                                        " sudo apt install universal-ctags
    Plug 'tpope/vim-commentary'     " gcc or gc
    Plug 'tpope/vim-surround'       " Surround
                                        " Normal mode:
                                            " ys iw (
                                            " ds (
                                            " cs iw ([
                                            " yss(
                                            " ( with space in between
                                            " ) without space
                                        " Visual mode:
                                            " S)
                                        " Visual line mode
                                            " S) inserts ) in previous and next line
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Don't leave one letter words at the end of the line
setlocal formatoptions+=1

" Numbers
set number relativenumber

" Searching
set ignorecase
set smartcase
set incsearch
set complete+=s
set showmatch
set hlsearch

set path+=**
" It works automatically in nvim
" Display all matchung files when we tab complete
" set wildmenu

" Spaces instead of tabs
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

setlocal wrap
setlocal linebreak
set tw=80
set display+=lastline
set backspace=indent,eol,start
set scrolloff=50

" Don't add double space after dot at the end of the line
set nojoinspaces

" Open split on the right/below
set splitbelow splitright

set clipboard^=unnamed,unnamedplus

set smartindent

" For .txt and .md i need autoindent (smartindent caused problems) and different format options
autocmd BufRead,BufNewFile   *.txt set fo=1tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=1tawc nosmartindent autoindent 

" Complete by ctrl-x + ctrl-... in insert mode
set omnifunc=syntaxcomplete#Complete

syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l

" I don't want that weird Q mode
nnoremap Q gq

" Show white characters
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f5> :set nolist<enter>
nnoremap <f6> :set list<enter>

" Spellcheck
set spellcapcheck=
nnoremap <f8> :set spell spelllang=<enter>
nnoremap <f9> :set spell spelllang=pl_pl,en_us<enter>

" Stop highlighting searching results
nnoremap <silent> <CR> :noh<CR>

" Y yanks to the end of the line
nnoremap Y y$

" Centers line with match
nnoremap n nzzzv
nnoremap N Nzzzv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => inoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Breakpoints for undo
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
inoremap - -<c-g>u
inoremap ; ;<c-g>u
inoremap : :<c-g>u
inoremap # #<c-g>u

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => cnoremaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" To avoid mistypes
cnoremap W w
cnoremap Q q

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" Saving, not technically leader, but still in this section
nnoremap <C-Space> :w<CR>

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +1<CR>
noremap <silent> <C-Down> :resize -1<CR>

" File search
nnoremap <leader>f :find **

" Splits
nnoremap <leader>v :wincmd v<CR>
nnoremap <leader>s :wincmd s<CR>

nnoremap <silent> <leader>h <C-w>h
nnoremap <silent> <leader>l <C-w>l
nnoremap <silent> <leader>k <C-w>k
nnoremap <silent> <leader>j <C-w>j

" Tags
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>p :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

" NerdTree
nnoremap <silent> <leader>q :NERDTree<CR>

" Tagbar
nnoremap <silent> <leader>b :Tagbar<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set cursorline

" Coursor appearance -- depends on mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Make coursor shape immidiate
set timeoutlen=1000
set ttimeoutlen=1

" Statusline
set laststatus=2
set statusline=
set statusline=%t\ %M\ %=\ %y\ %{&fileencoding?&fileencoding:&encoding}\ \[%{&fileformat}\]\ %l/%L:\ %v

" No welcome message
set shortmess+=I

colorscheme gruvbox

" Make background transparent
hi Normal guibg=NONE ctermbg=NONE

" Only number of the line is highlighted
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=NONE

