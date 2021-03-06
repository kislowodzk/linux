"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader = " "

" Make adjusting split sizes a bit more friendly
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

" Adding things
nnoremap <silent> <leader>ab lbi**<esc>ea**<esc>
nnoremap <silent> <leader>ai lbi*<esc>ea*<esc>
nnoremap <silent> <leader>a( lbi(<esc>ea)<esc>
nnoremap <silent> <leader>a{ lbi{<esc>ea}<esc>
nnoremap <silent> <leader>a[ lbi[<esc>ea]<esc>
nnoremap <silent> <leader>a' lbi'<esc>ea'<esc>
nnoremap <silent> <leader>a" lbi"<esc>ea"<esc>

nnoremap <silent> <leader>al a[]()<esc>i
nnoremap <silent> <leader>ap a![]()<esc>i
nnoremap <silent> <leader>as 50o<esc>50k
nnoremap <silent> <leader>a1 I# 
nnoremap <silent> <leader>a2 I## 
nnoremap <silent> <leader>a3 I### 
nnoremap <silent> <leader>a4 I#### 
nnoremap <silent> <leader>a5 I##### 

vnoremap <silent> <leader>ab c****<Esc>hP
vnoremap <silent> <leader>ai c**<Esc>P
vnoremap <silent> <leader>a( c()<Esc>P
vnoremap <silent> <leader>a{ c{}<Esc>P
vnoremap <silent> <leader>a[ c[]<Esc>P
vnoremap <silent> <leader>a' c''<Esc>P
vnoremap <silent> <leader>a" c""<Esc>P

" Deleting things
nnoremap <silent> <leader>di ?\*<cr>x/\*<cr>x:noh<cr>
nnoremap <silent> <leader>db ?\*\*<cr>xx/\*\*<cr>xx:noh<cr>
nnoremap <silent> <leader>d( ?(<cr>x/)<cr>x:noh<cr>
nnoremap <silent> <leader>d[ ?[<cr>x/]<cr>x:noh<cr>
nnoremap <silent> <leader>d{ ?{<cr>x/}<cr>x:noh<cr>
nnoremap <silent> <leader>d' ?'<cr>x/'<cr>x:noh<cr>
nnoremap <silent> <leader>d" ?"<cr>x/"<cr>x:noh<cr>


" Moving
nnoremap <silent> <leader>me G{}k$zz
nnoremap <silent> <leader>m1 ?^# <cr>
nnoremap <silent> <leader>m2 ?^## <cr>
nnoremap <silent> <leader>m3 ?^### <cr>
nnoremap <silent> <leader>m4 ?^#### <cr>
nnoremap <silent> <leader>m5 ?^##### <cr>

