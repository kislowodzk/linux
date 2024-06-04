" Plugins
call plug#begin()
    Plug 'maxmx03/solarized.nvim'
    Plug 'ayu-theme/ayu-vim'
    Plug 'vimwiki/vimwiki'
    Plug 'tpope/vim-commentary'   " gcc or gc
    Plug 'preservim/tagbar'       " Tagbar, leader + c (table of contents)
                                  " potrzebne: sudo apt install universal-ctags
call plug#end()

" General
set nocompatible

set ignorecase smartcase incsearch complete+=s showmatch hlsearch
set path+=**
set expandtab softtabstop=4 shiftwidth=4 tabstop=4
set wrap linebreak smartindent tw=74
set backspace=indent,eol,start
set wildmenu

set display+=lastline scrolloff=9 nojoinspaces
set splitbelow splitright

set encoding=utf-8 fileencoding=utf-8
set clipboard^=unnamed,unnamedplus
set noswapfile nobackup

set fo=croql
autocmd BufRead,BufNewFile   *.txt set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=tawc nosmartindent autoindent
autocmd BufRead,BufNewFile   *.wiki set filetype=vimwiki fo=tawc nosmartindent autoindent

syntax on
set omnifunc=syntaxcomplete#Complete

set rnu nu
set showcmd
set timeoutlen=1000 ttimeoutlen=1
set shortmess+=I title mouse=

function! Hab()
    colorscheme habamax
    hi Normal          guibg=#131313
    hi Identifier      guifg=#ca7f59    gui=BOLD  
    hi vimwikiItalic   guifg=#af87af    gui=ITALIC
    hi htmlItalic      guifg=#af87af    gui=ITALIC
    hi markdownItalic  guifg=#af87af    gui=ITALIC
    hi vimwikiBold     guifg=#af87af    gui=BOLD
    hi htmlBold        guifg=#af87af    gui=BOLD
    hi markdownBold    guifg=#af87af    gui=BOLD
    hi CursorLine      guibg=NONE       guifg=NONE
endfunction

function Ayu()
    colorscheme ayu
    hi LineNr          guifg=#565B66
    hi IncSearch       guibg=#FE7733    guifg=#0F1419
    hi Directory       guifg=#FE7733
    hi TabLine         gui=NONE
    hi TabLineSel      guifg=#E6B673
    hi vimwikiItalic   guifg=#E6B673    gui=ITALIC
    hi htmlItalic      guifg=#E6B673    gui=ITALIC
    hi markdownItalic  guifg=#E6B673    gui=ITALIC
    hi vimwikiBold     guifg=#E6B673    gui=BOLD
    hi htmlBold        guifg=#E6B673    gui=BOLD
    hi markdownBold    guifg=#E6B673    gui=BOLD
    hi Title           gui=BOLD
    hi ModeMsg         guifg=#E6B673    gui=REVERSE
    hi Identifier      gui=BOLD
    hi statuslinenc    guibg=#a8a8a8    guifg=#050505
    hi statusline      guibg=#E6B673    guifg=#050505
    hi CursorLine      guibg=NONE       guifg=NONE
endfunction

function! Gruv()
    set background=dark
    colorscheme retrobox
    hi CursorLine      guibg=NONE       guifg=NONE
endfunction

function! Light()
    set background=light
    colorscheme solarized
    hi vimwikiItalic   guifg=#af87af    gui=ITALIC
    hi htmlItalic      guifg=#af87af    gui=ITALIC
    hi markdownItalic  guifg=#af87af    gui=ITALIC
    hi vimwikiBold     guifg=#af87af    gui=BOLD
    hi htmlBold        guifg=#af87af    gui=BOLD
    hi markdownBold    guifg=#af87af    gui=BOLD
    hi CursorLine      guibg=NONE       guifg=NONE
endfunction

function! Tty()
    colorscheme slate
    set background=light
    set cursorline
    hi vimwikiItalic   ctermfg=6        term=ITALIC
    hi htmlItalic      ctermfg=6        term=ITALIC
    hi markdownItalic  ctermfg=6        term=ITALIC
    hi vimwikiBold     ctermfg=3        term=BOLD
    hi htmlBold        ctermfg=3        term=BOLD
    hi markdownBold    ctermfg=3        term=BOLD
    hi Title           ctermfg=9
endfunction

call Ayu()

set cursorline colorcolumn=76
set guicursor=n-v-c-sm:block,i-ci-ve-r-cr-o:hor20
set laststatus=1

" Normal mode
nnoremap <C-f> gg0vG$
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap <C-k> k
nnoremap <C-j> j
nnoremap <C-h> h
nnoremap <C-l> l

nnoremap Q gq
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +1<CR>
noremap <silent> <C-Down> :resize -1<CR>

" Insert mode
inoremap <C-j> <CR>- 

inoremap . .<c-g>u
inoremap - -<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Console mode
cnoremap W w
cnoremap Q q

" Visual mode
vmap < <gv
vmap > >gv

vnoremap j gj
vnoremap k gk
vnoremap <C-k> k
vnoremap <C-j> j
vnoremap <C-h> h
vnoremap <C-l> l

" Function keys
nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>
nnoremap <f8> :setlocal rnu! nu!<enter>

set spellcapcheck= spellsuggest=best,13
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us,de<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=

set listchars=space:·,trail:•,eol:¶
nnoremap <f10> :setlocal list!<enter>

" Leader
let mapleader = " "

nnoremap <leader>sl :set tw=99999<cr>
nnoremap <leader>ss :set tw=74<cr>
nnoremap <leader>sf :set fo=tawc nosmartindent autoindent<cr>
nnoremap <leader>sc :set fo=croql smartindent autoindent<cr>
nnoremap <leader>sF :set fo=ql nosmartindent autoindent<cr>
nnoremap <leader>st :set filetype=
nnoremap <leader>sk :! xset r rate 330 43<CR>

nnoremap <silent> <leader>me G{}k$zz
nnoremap <leader>mh /^
nnoremap <leader>mH ?^

nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>T :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<cr>
nnoremap <silent> <leader>p :tabprev<cr>
nnoremap <silent> <leader>tn :tabm +1<CR>
nnoremap <silent> <leader>tp :tabm -1<CR>
nnoremap <silent> <leader>tw :tabclose<CR>

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

nnoremap <silent> <CR> :noh<CR>
nnoremap <silent> <leader>h :noh<CR>

nnoremap <silent> <leader>ab viwc****<Esc>hPe
nnoremap <silent> <leader>ai viwc**<Esc>Pe
nnoremap <silent> <leader>au viwc__<Esc>Pe
nnoremap <silent> <leader>as 28o<esc>28k$zz
nnoremap <silent> <leader>aa 11o<esc>11k$zz

vnoremap <silent> <leader>ab c****<Esc>hPe
vnoremap <silent> <leader>ai c**<Esc>Pe
vnoremap <silent> <leader>au c__<Esc>Pe

nnoremap <silent> <leader>db ?\*\*<cr>xx/\*\*<cr>xx:noh<cr>
nnoremap <silent> <leader>du ?\_<cr>x/\_<cr>x:noh<cr>
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>

nnoremap <leader>vt :call Tty()<cr>

nnoremap <leader>va :call Ayu()<cr>
nnoremap <leader>vg :call Gruv()<cr>
nnoremap <leader>vl :call Light()<cr>
nnoremap <leader>vh :call Hab()<cr>

nnoremap <leader>ve :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>vs :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>vc :hi CursorLine guibg=NONE guifg=NONE<CR>
nnoremap <leader>vo :colo <c-d>

nnoremap <leader>ee :e! ~/**/*\c
nnoremap <leader>en :e! ~/Dokumenty/Notatki/**/*\c
nnoremap <leader>es :e! ~/1-STUDIA/**/*\c
nnoremap <leader>ec :e! ~/.config/**/*\c
nnoremap <leader>ew :e! ~/vimwiki/**/*\c

nnoremap <leader>b :b <C-d>

" Save location
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif

" Extensions
let g:netrw_banner = 0
let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4              " Capital 'P' opens in a split
let g:netrw_winsize = 20
nnoremap <silent> <leader>q :Vex<CR>
nnoremap <silent> <leader>c :Tagbar<CR>
let g:vimwiki_global_ext = 0

