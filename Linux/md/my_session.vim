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
tabnew
tabnew
tabrewind
edit ToDo.md
argglobal
balt Semestr_6/Fenomenologia.md
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
let s:l = 8 - ((7 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
lcd ~/Dokumenty/Notatki
tabnext
edit ~/Dokumenty/Notatki/Filozofia/Wykłady_w_internecie/Historia_Filozofii_Analitycznej.md
argglobal
balt ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania3.md
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
let s:l = 2602 - ((19 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2602
normal! 07|
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania4.md
argglobal
balt ~/Dokumenty/Notatki/Filozofia/Wykłady_w_internecie/Historia_Filozofii_Analitycznej.md
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
let s:l = 12 - ((11 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
normal! 09|
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/grantowe.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 81 + 61) / 122)
exe 'vert 2resize ' . ((&columns * 40 + 61) / 122)
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
let s:l = 14 - ((13 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 14
normal! 0
wincmd w
argglobal
enew
file ~/Dokumenty/Notatki/__Tagbar__.7
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
exe 'vert 1resize ' . ((&columns * 81 + 61) / 122)
exe 'vert 2resize ' . ((&columns * 40 + 61) / 122)
tabnext
edit ~/Dokumenty/Notatki/Smoluchowski/T7/T7.md
argglobal
balt ~/Dokumenty/Notatki/Filozofia/Wykłady_w_internecie/Historia_Filozofii_Analitycznej.md
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
let s:l = 11 - ((10 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
tabnext 4
set stal=1
badd +1 ~/Dokumenty/Notatki/Filozofia/Wykłady_w_internecie/Historia_Filozofii_Analitycznej.md
badd +244 ~/Dokumenty/Notatki/Semestr_6/Filo_umyslu/Filozofia_umyslu.md
badd +0 ~/Dokumenty/Notatki/ToDo.md
badd +218 ~/Dokumenty/Notatki/Semestr_6/Fenomenologia.md
badd +11 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania3.md
badd +1102 ~/Dokumenty/Notatki/Semestr_6/Heidegger_wy.md
badd +308 ~/Dokumenty/Notatki/Smoluchowski/T6.md
badd +555 ~/Dokumenty/Notatki/Semestr_6/Pytania_metafizyczne_w_fizyce.md
badd +237 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_wy.md
badd +144 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Filozofia_jezyka_konspekty/notatki_czytanie/Kripke_III_referat.md
badd +412 ~/Dokumenty/linux/Linux/md/.config/nvim/init.vim
badd +2 ~/Dokumenty/Notatki/README.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_1_6.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/grantowe.md
badd +18 ~/Dokumenty/Notatki/Semestr_6/Filozofia_nauki.md
badd +9 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_7_11.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania1.md
badd +381 ~/Dokumenty/Notatki/Semestr_6/Heidegger_cw.md
badd +23 ~/Dokumenty/linux/Linux/md/.config/nvim/archive/config_for_gruvbox.vim
badd +2189 ~/Dokumenty/Notatki/Semestr_6/Reizm.md
badd +1241 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_cw.md
badd +1139 ~/Dokumenty/Notatki/Semestr_6/Filozofia_jezyka.md
badd +15 ~/Dokumenty/linux/Linux/onlyoffice_shortcuts.md
badd +2559 ~/Dokumenty/Notatki/Semestr_6/Spor_o_nature_metafizyki.md
badd +5 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania2.md
badd +6 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Czytelnia_Lucka/Licencjat.md
badd +114 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Czytelnia_Lucka/Van_benthem_logic_of_time.md
badd +236 ~/Dokumenty/Notatki/Semestr_6/Filozofia_umyslu.md
badd +0 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania4.md
badd +508 ~/Dokumenty/Notatki/Semestr_6/Filozofia_informacji.md
badd +0 ~/Dokumenty/Notatki/Smoluchowski/T7/T7.md
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
