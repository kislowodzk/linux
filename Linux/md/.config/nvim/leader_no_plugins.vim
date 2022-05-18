"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Leader
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
nnoremap <silent> <leader>p :tabprevious<CR>
nnoremap <silent> <leader>w :tabclose<CR>

" File explorer
nnoremap <silent> <leader>q :Vex<CR>

" Italic/bold
nnoremap <silent> <leader>b lbi**<esc>ea**<esc>
nnoremap <silent> <leader>i lbi*<esc>ea*<esc>
nnoremap <silent> <leader>rb F*xF*xf*xx
nnoremap <silent> <leader>ri F*xf*x

" Images/links in markdown
nnoremap <silent> <leader>l a[]()<esc>
nnoremap <silent> <leader>p a![]()<esc>

