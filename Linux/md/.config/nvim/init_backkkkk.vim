
Original file line number 	Diff line number 	Diff line change
" ========================================================================
" PLUG CALL
" ========================================================================
call plug#begin('~/.config/nvim/plugged')
    Plug 'ayu-theme/ayu-vim'
    Plug 'gruvbox-community/gruvbox'
    Plug 'chriskempson/base16-vim'
    Plug 'mhinz/vim-startify'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'ap/vim-css-color'
    Plug 'tpope/vim-commentary'   " gcc or gc
    Plug 'preservim/tagbar'       " Tagbar, leader + c (table of contents); potrzebne: sudo apt install universal-ctags
call plug#end()
" ========================================================================
" GENERAL
" ========================================================================
set nocompatible
set ignorecase smartcase incsearch complete+=s showmatch hlsearch
set path+=**
set expandtab softtabstop=4 shiftwidth=4 tabstop=4
set wrap linebreak smartindent tw=74
set backspace=indent,eol,start
set wildmenu
set display+=lastline scrolloff=12 nojoinspaces
set splitbelow splitright
set encoding=utf-8 fileencoding=utf-8
set clipboard^=unnamed,unnamedplus
set noswapfile nobackup
set nofoldenable
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
set statusline=\ %<%t\ %h%M%r%=\ %p%%\ \ %l:%-3v
syntax on
set omnifunc=syntaxcomplete#Complete
" ========================================================================
" COLORSCHE
" ========================================================================
" Z jakiegoś powodu to musi być przed funkcją, albo nie działa
set background=dark
set termguicolors
let ayucolor="mirage"   " light/ dark/ mirage
colorscheme ayu         " Zmiana w ayu.vim
function! Ayu()
    set background=dark
    set termguicolors
    let ayucolor="light"   " light/ dark/ mirage
    colorscheme ayu         " Zmiana w ayu.vim
                            " let s:palette.keyword   = {'dark': "#FF7733",  'light': "#FF7733",  'mirage': "#FF8E37"}
                            " let s:palette.constant  = {'dark': "#FFEE99",  'light': "#A37ACC",  'mirage': "#FFEE99"}
    hi LineNr             guifg=#666B76
    hi IncSearch          guibg=#FF8436    guifg=#0F1419    gui=NONE
    hi Search             guibg=#607080    guifg=#FFFFFF
    hi Directory          guifg=#FF8436
    hi TabLine            gui=NONE
    hi vimwikiItalic      guifg=#f6c663    gui=ITALIC
    hi htmlItalic         guifg=#f6c663    gui=ITALIC
    hi markdownItalic     guifg=#f6c653    gui=ITALIC
    hi vimwikiBold        guifg=#F07178    gui=BOLD
    hi htmlBold           guifg=#F07178    gui=BOLD
    hi markdownBold       guifg=#F07178    gui=BOLD
    hi vimwikiBoldItalic  guifg=#F07178    gui=BOLD,ITALIC
    hi htmlBoldItalic     guifg=#F07178    gui=BOLD,ITALIC
    hi markdownBoldItalic guifg=#F07178    gui=BOLD,ITALIC
    hi Title              gui=BOLD
    hi VimwikiList        guifg=#FF8436
    hi Visual             guibg=#607080    guifg=#FFFFFF
    hi ModeMsg            guifg=#FF8436
    hi SpellBad           guifg=NONE       gui=UNDERCURL
    hi SpellCap           guifg=NONE       gui=UNDERCURL
    hi SpellLocal         guifg=NONE       gui=UNDERCURL
    hi SpellRare          guifg=NONE       gui=UNDERCURL
    hi ColorColumn        guibg=#0f0f0f
    hi CursorLine         gui=NONE guibg=NONE guifg=NONE
    hi CursorLine         cterm=NONE ctermbg=NONE ctermfg=NONE
    highlight vCursor guifg=black guibg=#FFFFFF
    highlight iCursor guifg=black guibg=#FF8436
endfunction
function! Light()
    colo gruvbox
    set background=light
    hi vimwikiItalic      guifg=#427b58    gui=ITALIC
    hi htmlItalic         guifg=#427b58    gui=ITALIC
    hi markdownItalic     guifg=#427b58    gui=ITALIC
    hi vimwikiBold        guifg=#8f3f71    gui=BOLD
    hi htmlBold           guifg=#8f3f71    gui=BOLD
    hi markdownBold       guifg=#8f3f71    gui=BOLD
    hi vimwikiBoldItalic  guifg=#8f3f71    gui=BOLD,ITALIC
    hi htmlBoldItalic     guifg=#8f3f71    gui=BOLD,ITALIC
    hi markdownBoldItalic guifg=#8f3f71    gui=BOLD,ITALIC
    hi VimwikiList        guifg=#9d0006
    hi Title              guifg=#9d0006
    hi! link markdownH1 GruvboxRedBold
    hi! link markdownH2 GruvboxRedBold
    hi! link markdownH3 GruvboxRedBold
    hi! link markdownH4 GruvboxRedBold
    hi! link markdownH5 GruvboxRedBold
    hi! link markdownH6 GruvboxRedBold
    hi CursorLine gui=NONE guibg=NONE guifg=NONE
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    highlight vCursor guibg=#526b58 guifg=#FFFFFF
    highlight iCursor guifg=black guibg=#bd0006
endfunction

call Light()

function! Default()
    colorscheme default
    set background=dark
    set termguicolors
    hi LineNr             guifg=#888888
    hi vimwikiItalic      guifg=#af87af  gui=ITALIC       cterm=italic
    hi htmlItalic         guifg=#af87af  gui=ITALIC       cterm=italic
    hi markdownItalic     guifg=#af87af  gui=ITALIC       cterm=italic
    hi vimwikiBold        guifg=#87afd7  gui=BOLD         cterm=bold
    hi htmlBold           guifg=#87afd7  gui=BOLD         cterm=bold
    hi markdownBold       guifg=#87afd7  gui=BOLD         cterm=bold
    hi vimwikiBoldItalic  guifg=#87afd7  gui=BOLD,ITALIC  cterm=bold,italic
    hi htmlBoldItalic     guifg=#87afd7  gui=BOLD,ITALIC  cterm=bold,italic
    hi markdownBoldItalic guifg=#87afd7  gui=BOLD,ITALIC  cterm=bold,italic
    hi CursorLineNr       gui=none       cterm=none
    hi CursorLine gui=NONE guibg=NONE guifg=NONE
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
endfunction
function! Darkblue()
    colorscheme darkblue
    set background=dark
    set termguicolors
    hi LineNr             guifg=#888888
    " hi vimwikiItalic      guifg=#f140af  gui=ITALIC       cterm=italic
    " hi htmlItalic         guifg=#f140af  gui=ITALIC       cterm=italic
    " hi markdownItalic     guifg=#f140af  gui=ITALIC       cterm=italic
    hi vimwikiItalic      guifg=#50bb50  gui=ITALIC       cterm=italic
    hi htmlItalic         guifg=#50bb50  gui=ITALIC       cterm=italic
    hi markdownItalic     guifg=#50bb50  gui=ITALIC       cterm=italic
    hi vimwikiBold        guifg=#379fe7  gui=BOLD         cterm=bold
    hi htmlBold           guifg=#379fe7  gui=BOLD         cterm=bold
    hi markdownBold       guifg=#379fe7  gui=BOLD         cterm=bold
    hi vimwikiBoldItalic  guifg=#379fe7  gui=BOLD,ITALIC  cterm=bold,italic
    hi htmlBoldItalic     guifg=#379fe7  gui=BOLD,ITALIC  cterm=bold,italic
    hi markdownBoldItalic guifg=#379fe7  gui=BOLD,ITALIC  cterm=bold,italic
    hi CursorLineNr       gui=none       cterm=none
    " hi ColorColumn        guibg=#001f57
    hi ColorColumn        guibg=#808080
    hi CursorLine gui=NONE guibg=NONE guifg=NONE
    hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    highlight vCursor guifg=black guibg=#FFFFFF
    highlight iCursor guifg=black guibg=#FF8436
endfunction

function! Grayscale()
    colorscheme base16-grayscale-dark
    set termguicolors
    hi vimwikiItalic      guifg=#f7f7f7  gui=ITALIC       cterm=italic
    hi htmlItalic         guifg=#f7f7f7  gui=ITALIC       cterm=italic
    hi markdownItalic     guifg=#f7f7f7  gui=ITALIC       cterm=italic
    hi vimwikiBold        guifg=#f7f7f7  gui=BOLD         cterm=bold
    hi htmlBold           guifg=#f7f7f7  gui=BOLD         cterm=bold
    hi markdownBold       guifg=#f7f7f7  gui=BOLD         cterm=bold
    hi vimwikiBoldItalic  guifg=#f7f7f7  gui=BOLD,ITALIC  cterm=bold,italic
    hi htmlBoldItalic     guifg=#f7f7f7  gui=BOLD,ITALIC  cterm=bold,italic
    hi markdownBoldItalic guifg=#f7f7f7  gui=BOLD,ITALIC  cterm=bold,italic
    hi CursorLineNr       gui=none       cterm=none
    hi Title              gui=underline,bold
    " hi CursorLine gui=NONE guibg=NONE guifg=NONE
    " hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    hi IncSearch          guibg=#f7f7f7  gui=NONE
    hi Search             guibg=#686868
    hi VimwikiList        guifg=#f7f7f7
    hi Statement          guifg=#c0c0c0
    highlight vCursor guifg=black guibg=#a0a0a0
    highlight iCursor guifg=black guibg=#f7f7f7
endfunction


call Grayscale()

let &t_SI = "\e[4 q"
let &t_EI = "\e[2 q"

" set guicursor=n-v-c-sm:block,i-ci-ve-r-cr-o:hor30
set guicursor=n-v-c-sm:block-vCursor
set guicursor+=i-ci-ve-r-cr-o:block-iCursor

hi CursorLine gui=NONE guibg=NONE guifg=NONE
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
" hi CursorLine gui=NONE guibg=NONE guifg=NONE
" hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE

" ========================================================================
" REMAPS
" ========================================================================
inoremap <C-s> <esc>:wa<cr>
nnoremap <C-s> :wa<cr>
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
inoremap <A-j> <CR>-
inoremap <C-b> **
inoremap . .<c-g>u
inoremap - -<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u
cnoremap W w
cnoremap Q q
vmap < <gv
vmap > >gv
nnoremap <f7> :set fileencoding? fileformat? filetype?<enter>
nnoremap <f8> :set rnu! nu!<enter>
set spellcapcheck= spellsuggest=best,12
nnoremap <f9> :setlocal spell! spelllang=pl_pl,en_us,de<enter>
nnoremap [s [szz
nnoremap ]s ]szz
nnoremap z= zzz=
set listchars=space:·,trail:•,eol:¶
nnoremap <f10> :setlocal list!<enter>
" ========================================================================
" LEADER KEY
" ========================================================================
let mapleader = " "
nnoremap <leader>sl :set tw=99999<cr>
nnoremap <leader>sn :set tw=74 colorcolumn=76<cr>
nnoremap <leader>ss :set tw=66 colorcolumn=68<cr>
nnoremap <leader>sf :set fo=taw nosmartindent autoindent<cr>
nnoremap <leader>sc :set fo=jcroql smartindent autoindent<cr>
nnoremap <leader>sF :set fo=ql nosmartindent autoindent<cr>
nnoremap <leader>st :set filetype=
nnoremap <leader>sk :! xset r rate 330 43<CR>
nnoremap <leader>se :term sudo loadkeys ~/.keystrings<CR>
nnoremap <silent> <leader>me G{}k$zz
nnoremap <silent> <leader>mE G{}k$zt
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
nnoremap <silent> <leader>a" viwc""<Esc>Pe
nnoremap <silent> <leader>a' viwc''<Esc>Pe
nnoremap <silent> <leader>au viwc__<Esc>Pe
nnoremap <silent> <leader>a( viwc()<Esc>Pe
nnoremap <silent> <leader>a[ viwc[]<Esc>Pe
nnoremap <silent> <leader>a< viwc<><Esc>Pe
nnoremap <silent> <leader>a« viwc«»<Esc>Pe
nnoremap <silent> <leader>a$ viwc$$<Esc>Pe
nnoremap <silent> <leader>as 28o<esc>28k$zz
vnoremap <silent> <leader>ab c****<Esc>hPe
vnoremap <silent> <leader>ai c**<Esc>Pe
vnoremap <silent> <leader>a" c""<Esc>Pe
vnoremap <silent> <leader>a' c''<Esc>Pe
vnoremap <silent> <leader>au c__<Esc>Pe
vnoremap <silent> <leader>a( c()<Esc>Pe
vnoremap <silent> <leader>a[ c[]<Esc>Pe
vnoremap <silent> <leader>a< c<><Esc>Pe
vnoremap <silent> <leader>a« c«»<Esc>Pe
vnoremap <silent> <leader>a$ c$$<Esc>Pe
nnoremap <silent> <leader>db ?\*\*<cr>xx/\*\*<cr>xx:noh<cr>
nnoremap <silent> <leader>du ?_<cr>x/_<cr>x:noh<cr>
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>
nnoremap <leader>ve :e! ~/.config/nvim/init.vim<CR>
nnoremap <leader>vs :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>vd :let ayucolor="dark"<cr>:colo ayu<cr>:call Colours()<cr>
nnoremap <leader>vm :let ayucolor="mirage"<cr>:colo ayu<cr>:call Colours()<cr>
nnoremap <leader>vl :call Light()<cr>
" ========================================================================
" PLUGIN SETUP
" ========================================================================
" Remember coursor position
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif
" Instead of Goyo
function CenterPane()
    lefta vnew
    wincmd w
    exec 'vertical resize '. string(&columns * 0.73)
endfunction
nnoremap <leader>g :call CenterPane()<cr>
nnoremap <leader>G <c-w>hZQ
" Fzf
nnoremap <leader>vo :Colors<cr>
nnoremap <leader>b :Buffers<cr>
let g:fzf_vim = {}
let g:fzf_vim.preview_window = ['up,50%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }
let $FZF_DEFAULT_COMMAND = "rg --files -L"
"what folder
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
" Tagbar
nnoremap <silent> <leader>c :Tagbar<CR>
" Vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_folding = ''
" Startify
let g:startify_custom_header = [
\ '              |\__/,|   (`\        _.-|   |          |\__/,|   (`\ ' ,
\ '              |o o  |__ _) )      {   |   |          |o o  |__ _) )' ,
\ '            _.( T   )  `  /        "-.|___|        _.( T   )  `  / ' ,
\ '    n._    ((_ `^--` /_<  \         .--`-`-.     _((_ `^--` /_<  \ ' ,
\ '  <" _ }=- `` `-`(((/  (((/       .+|______|__.-||__)`-`(((/  (((/ ' ,
\ ]
