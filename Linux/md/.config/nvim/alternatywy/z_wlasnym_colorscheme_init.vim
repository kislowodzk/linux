" Plugins
call plug#begin()
    Plug 'altercation/vim-colors-solarized'
    Plug 'morhetz/gruvbox'

    Plug 'vimwiki/vimwiki'
    Plug 'tpope/vim-commentary'   " gcc or gc
    Plug 'preservim/tagbar'       " Tagbar, leader + c (table of contents)
                                  " I need to have ctag installed, eg.:
                                  "   sudo apt install universal-ctags
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

set encoding=utf-8
set fileencoding=utf-8
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

set shortmess+=I
set title

set colorcolumn=76
set cursorline
set guicursor=n-v-c-sm:block,i-ci-ve-r-cr-o:hor20       " for nvim
let &t_SI = "\e[4 q"                                    " for vim
let &t_EI = "\e[2 q"                                    " for vim

" Colorscheme
colorscheme default
set background=dark

hi IncSearch        ctermbg=253          ctermfg=16     cterm=NONE
hi Search           ctermbg=130          ctermfg=16     cterm=NONE
hi Visual           cterm=reverse        ctermbg=NONE
hi ColorColumn      ctermbg=237
hi CursorLine       ctermbg=NONE         cterm=NONE
hi CursorLineNr     cterm=bold           ctermfg=130
hi LineNr           ctermfg=130
hi Delimiter        ctermbg=NONE         ctermfg=253    cterm=bold
hi Title            ctermfg=166          cterm=bold
hi vimwikiItalic    ctermfg=228          cterm=italic
hi htmlItalic       ctermfg=228          cterm=italic
hi markdownItalic   ctermfg=228          cterm=italic
hi vimwikiBold      ctermfg=228          cterm=bold
hi htmlBold         ctermfg=228          cterm=bold
hi markdownBold     ctermfg=228          cterm=bold
hi SpellBad         ctermbg=238
hi SpellCap         ctermbg=238
hi SpellLocal       ctermbg=238
hi SpellRare        ctermbg=238
hi Identifier       ctermfg=109
hi Underlined       ctermfg=109          cterm=NONE
hi ModeMsg          ctermbg=NONE         ctermfg=3      cterm=bold
hi MatchParen       ctermbg=NONE         ctermbg=241
hi Todo             ctermbg=NONE         ctermfg=166    cterm=bold,italic
hi Folded           ctermbg=237          ctermfg=245    cterm=italic
hi Statement        ctermbg=NONE         ctermfg=9
hi String           ctermbg=NONE         ctermfg=2
hi Type             ctermbg=NONE         ctermfg=214
hi Constant         ctermbg=NONE         ctermfg=13
hi PreProc          ctermbg=NONE         ctermfg=14
hi Special          ctermbg=NONE         ctermfg=166
hi Operator         ctermbg=NONE         ctermfg=15
hi Comment          ctermbg=NONE         ctermfg=4

hi Special          ctermbg=NONE         ctermfg=166
hi Directory        ctermbg=NONE         ctermfg=3
hi Pmenu            ctermbg=235          ctermfg=NONE
hi PmenuSel         ctermbg=234          ctermfg=166
hi VertSplit        ctermbg=233          ctermfg=233
hi TabLine          ctermbg=236          ctermfg=249    cterm=none
hi TabLineSel       ctermfg=166          ctermbg=236
hi TabLineFill      ctermbg=0            ctermfg=236

set laststatus=1
hi statusline       cterm=bold           ctermfg=252    ctermbg=NONE
hi statuslineNC     cterm=none           ctermfg=248    ctermbg=NONE

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

nnoremap <C-s> :w<CR>

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

set spellcapcheck=
set spellsuggest=best,13
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
nnoremap <leader>sf :set fo=tawc<cr>
nnoremap <leader>sc :set fo=croql<cr>
nnoremap <leader>sF :set fo=ql<cr>
nnoremap <leader>st :set filetype=

nnoremap <silent> <leader>me G{}k$zz
nnoremap <leader>mh ?^
nnoremap <leader>mw /^=<CR>
nnoremap <leader>mm /^#<CR>

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

nnoremap <leader>vt :colorscheme slate<cr> :set nocursorline<cr> :set background=light<cr>
nnoremap <leader>vd :set background=dark<cr>
nnoremap <leader>vl :set background=light<cr>
nnoremap <leader>ve :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>vs :so ~/.config/nvim/init.vim<CR>

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

