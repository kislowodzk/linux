let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dokumenty/Notatki/Semestr_6/Licencjat
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabnew
tabnew
tabnew
tabrewind
edit 1_naglowek.md
argglobal
balt 3_putnam.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 2 - ((1 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 010|
tabnext
edit 3_putnam.md
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 556 - ((23 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 556
normal! $
lcd ~/Dokumenty/Notatki/Semestr_6/Licencjat
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Licencjat/5_savitt.md
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 017|
lcd ~/Dokumenty/Notatki/Semestr_6/Licencjat
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Licencjat/7_bibliografia.md
argglobal
balt ~/Dokumenty/Notatki/Semestr_6/Licencjat/3_putnam.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 15 - ((11 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Licencjat/notatki.md
argglobal
balt ~/Dokumenty/Notatki/Semestr_6/Licencjat/1_naglowek.md
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 3
set stal=1
badd +214 ~/Dokumenty/Notatki/Semestr_6/Licencjat/5_savitt.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/7_bibliografia.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/notatki.md
badd +2 ~/Dokumenty/Notatki/Semestr_6/Licencjat/1_naglowek.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/3_putnam.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/2_wstep.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/4_v_benthem.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Licencjat/6_zakonczenie.md
badd +171 ~/Dokumenty/linux/Linux/md/.config/nvim/init.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFI
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
