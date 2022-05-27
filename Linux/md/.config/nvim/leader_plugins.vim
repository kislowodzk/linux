"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

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

" Tags
nnoremap <silent> <leader>t :tabnew<CR>
nnoremap <silent> <leader>n :tabnext<CR>
nnoremap <silent> <leader>N :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

" Italic/bold
nnoremap <silent> <leader>b lbi**<esc>ea**<esc>
nnoremap <silent> <leader>i lbi*<esc>ea*<esc>
nnoremap <silent> <leader>rb F*xF*xf*xx
nnoremap <silent> <leader>ri F*xf*x

" Images/links in markdown
nnoremap <silent> <leader>l a[]()<esc>
nnoremap <silent> <leader>p a![]()<esc>

" Adding things
nnoremap <silent> <leader>al 50O<esc>49k
nnoremap <silent> <leader>a1 I#
nnoremap <silent> <leader>a2 I##
nnoremap <silent> <leader>a3 I###
nnoremap <silent> <leader>a4 I####
nnoremap <silent> <leader>a5 I#####

" Moving
nnoremap <silent> <leader>me G{}
nnoremap <silent> <leader>m1 ?^# <cr>
nnoremap <silent> <leader>m2 ?^## <cr>
nnoremap <silent> <leader>m3 ?^### <cr>
nnoremap <silent> <leader>m4 ?^#### <cr>
nnoremap <silent> <leader>m5 ?^##### <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NerdTree
nnoremap <silent> <leader>q :NERDTree<CR>

" Tagbar / table of contents
nnoremap <silent> <leader>c :Tagbar<CR>

" Goyo -- focus mode
nnoremap <silent> <leader>g :Goyo<CR>
