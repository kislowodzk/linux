let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Dokumenty/Notatki
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabnew
tabrewind
edit ToDo.md
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
let s:l = 33 - ((22 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 015|
lcd ~/Dokumenty/Notatki
tabnext
edit ~/Dokumenty/Notatki/Smoluchowski/T6.md
argglobal
balt ~/Dokumenty/Notatki/Smoluchowski/T6.md
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
let s:l = 239 - ((11 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 239
normal! 0
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Spor_o_nature_metafizyki.md
argglobal
balt ~/Dokumenty/Notatki/Semestr_6/Spor_o_nature_metafizyki.md
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
let s:l = 2098 - ((18 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2098
normal! 0
tabnext 3
set stal=1
badd +1 ~/Dokumenty/Notatki/Smoluchowski/T6.md
badd +144 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Filozofia_jezyka_konspekty/notatki_czytanie/Kripke_III_referat.md
badd +85 ~/Dokumenty/linux/Linux/md/.config/nvim/init.vim
badd +2 ~/Dokumenty/Notatki/README.md
badd +1 ~/Dokumenty/Notatki/ToDo.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_1_6.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Heidegger_wy.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_wy.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Fenomenologia.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/grantowe.md
badd +18 ~/Dokumenty/Notatki/Semestr_6/Filozofia_nauki.md
badd +9 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_7_11.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania1.md
badd +359 ~/Dokumenty/Notatki/Semestr_6/Pytania_metafizyczne_w_fizyce.md
badd +234 ~/Dokumenty/Notatki/Semestr_6/Heidegger_cw.md
badd +23 ~/Dokumenty/linux/Linux/md/.config/nvim/archive/config_for_gruvbox.vim
badd +2013 ~/Dokumenty/Notatki/Semestr_6/Reizm.md
badd +1193 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_cw.md
badd +1097 ~/Dokumenty/Notatki/Semestr_6/Filozofia_jezyka.md
badd +19 ~/Dokumenty/linux/Linux/onlyoffice_shortcuts.md
badd +0 ~/Dokumenty/Notatki/Semestr_6/Spor_o_nature_metafizyki.md
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
