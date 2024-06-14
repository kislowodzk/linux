call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'mhinz/vim-startify'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'ap/vim-css-color'
    Plug 'tpope/vim-commentary'   " gcc or gc
    Plug 'preservim/tagbar'       " Tagbar, leader + c (table of contents); potrzebne: sudo apt install universal-ctags
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

set cursorline colorcolumn=76
set guicursor=n-v-c-sm:block,i-ci-ve-r-cr-o:hor20

set rnu nu
set showcmd
set timeoutlen=1000 ttimeoutlen=1
set fo=jcroql
autocmd BufRead,BufNewFile   *.txt set fo=taw nosmartindent autoindent
autocmd BufRead,BufNewFile   *.md set fo=taw nosmartindent autoindent
autocmd BufRead,BufNewFile   *.wiki set filetype=vimwiki fo=taw nosmartindent autoindent
set shortmess+=I title mouse=
set laststatus=2

syntax on
set omnifunc=syntaxcomplete#Complete

function! Dark()
    set background=dark
    let g:gruvbox_contrast_dark = 'hard'
    let g:gruvbox_italic = 1
    colorscheme gruvbox
    hi Normal          guibg=#1c1c1c
    hi vimwikiItalic   guifg=#f6c663    gui=ITALIC
    hi htmlItalic      guifg=#f6c663    gui=ITALIC
    hi markdownItalic  guifg=#f6c663    gui=ITALIC
    hi vimwikiBold     guifg=#E6B673    gui=BOLD
    hi htmlBold        guifg=#E6B673    gui=BOLD
    hi markdownBold    guifg=#E6B673    gui=BOLD
    hi CursorLine      guibg=NONE       guifg=NONE
    hi! link markdownListMarker GruvboxRed
    hi! link markdownOrderedListMarker GruvboxRed
endfunction

function! Light()
    set background=light
    colorscheme morning
    hi vimwikiItalic   guifg=#af3a03    gui=ITALIC
    hi htmlItalic      guifg=#af3a03    gui=ITALIC
    hi markdownItalic  guifg=#af3a03    gui=ITALIC
    hi vimwikiBold     guifg=#af3a03    gui=BOLD
    hi htmlBold        guifg=#af3a03    gui=BOLD
    hi markdownBold    guifg=#af3a03    gui=BOLD
    hi CursorLine      guibg=NONE       guifg=NONE
    hi Title           guifg=#9d0006
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

call Dark()

nnoremap <C-f> gg0vG$
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap <C-k> k
nnoremap <C-j> j
nnoremap <C-h> h
nnoremap <C-l> l

vnoremap j gj
vnoremap k gk
vnoremap <C-k> k
vnoremap <C-j> j
vnoremap <C-h> h
vnoremap <C-l> l

nnoremap Q gq
nnoremap Y y$
nnoremap n nzzzv
nnoremap N Nzzzv

noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +1<CR>
noremap <silent> <C-Down> :resize -1<CR>

inoremap <C-j> <CR>- 

inoremap . .<c-g>u
inoremap - -<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

cnoremap W w
cnoremap Q q

vmap < <gv
vmap > >gv

nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>
nnoremap <f8> :setlocal rnu! nu!<enter>
set spellcapcheck= spellsuggest=best,13
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us,de<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=
set listchars=space:·,trail:•,eol:¶
nnoremap <f10> :setlocal list!<enter>

let mapleader = " "

nnoremap <leader>sl :set tw=99999<cr>
nnoremap <leader>ss :set tw=74<cr>
nnoremap <leader>sf :set fo=taw nosmartindent autoindent<cr>
nnoremap <leader>sc :set fo=jcroql smartindent autoindent<cr>
nnoremap <leader>sF :set fo=ql nosmartindent autoindent<cr>
nnoremap <leader>st :set filetype=
nnoremap <leader>sk :! xset r rate 330 43<CR>

nnoremap <silent> <leader>me G{}k$zz
nnoremap <silent> <leader>tt :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<cr>
nnoremap <silent> <leader>p :tabprev<cr>
nnoremap <silent> <leader>tn :tabm +1<CR>
nnoremap <silent> <leader>tp :tabm -1<CR>
nnoremap <silent> <leader>1 1gt
nnoremap <silent> <leader>2 2gt
nnoremap <silent> <leader>3 3gt
nnoremap <silent> <leader>4 4gt
nnoremap <silent> <leader>5 5gt
nnoremap <silent> <leader>6 6gt
nnoremap <silent> <leader>7 7gt
nnoremap <silent> <leader>8 8gt
nnoremap <silent> <leader>9 9gt
nnoremap <silent> <leader>0 10gt

nnoremap <silent> <CR> :noh<CR>
nnoremap <silent> <leader>h :noh<CR>

nnoremap <silent> <leader>ab viwc****<Esc>hPe
nnoremap <silent> <leader>ai viwc**<Esc>Pe
nnoremap <silent> <leader>au viwc__<Esc>Pe
nnoremap <silent> <leader>as 28o<esc>28k$zz

nnoremap <leader>ve :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>vs :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>vd :call Dark()<cr>
nnoremap <leader>vl :call Light()<cr>
nnoremap <leader>vt :call Tty()<cr>

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif

" Lightline
let g:lightline = { 
\ 'colorscheme': 'srcery_drk',
\ 'active': {
\ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename' ] ],
\ 'right': [ [ 'lineinfo2' ], [ 'percent' ], [ 'filetype' ] ] },
\ 'component': { 'lineinfo2': '%3l:%-2v' },
\ 'component_function': { 'filename': 'LightlineFilename' }, }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

" fzf
nnoremap <leader>vo :Colors<cr>
nnoremap <leader>b :Buffers<cr>
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['up,50%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_COMMAND = "rg --files -L"

nnoremap <leader>ff :Files ~/<cr>
nnoremap <leader>fc :Files ~/.config/<cr>
nnoremap <leader>fw :Files ~/vimwiki/<cr>
"all buffers
nnoremap <leader>fl :Lines<CR>
"only current buffer
nnoremap <leader>fb :BLines<CR>

" Netrw -- P opens in split
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
nnoremap <silent> <leader>q :Vex<CR>

" Other
nnoremap <silent> <leader>c :Tagbar<CR>
let g:vimwiki_global_ext = 0
let g:startify_custom_header = [
    \ '            |\__/,|   (`\        _.-|   |          |\__/,|   (`\    ' ,
    \ '            |o o  |__ _) )      {   |   |          |o o  |__ _) )   ' ,
    \ '          _.( T   )  `  /        "-.|___|        _.( T   )  `  /    ' ,
    \ '  n._    ((_ `^--` /_<  \         .--`-`-.     _((_ `^--` /_<  \    ' ,
    \ '<" _ }=- `` `-`(((/  (((/       .+|______|__.-||__)`-`(((/  (((/    ' ,
    \ ]
