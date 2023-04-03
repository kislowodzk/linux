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
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Dokumenty/Notatki
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
let s:l = 19 - ((7 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 0
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania5.md
argglobal
balt ~/Dokumenty/Notatki/Smoluchowski/T7/T7.md
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
let s:l = 48 - ((12 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 0
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_cw.md
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
let s:l = 1341 - ((18 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1341
normal! $
tabnext
edit ~/Dokumenty/Notatki/Semestr_6/Filozofia_informacji.md
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
let s:l = 508 - ((18 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 508
normal! 0
tabnext 5
set stal=1
badd +1 ~/Dokumenty/Notatki/ToDo.md
badd +1 ~/Dokumenty/Notatki/Smoluchowski/T7/T7.md
badd +0 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania5.md
badd +218 ~/Dokumenty/Notatki/Semestr_6/Fenomenologia.md
badd +2796 ~/Dokumenty/Notatki/Filozofia/Wykłady_w_internecie/Historia_Filozofii_Analitycznej.md
badd +1637 ~/Dokumenty/Notatki/Semestr_6/Heidegger_wy.md
badd +415 ~/Dokumenty/linux/Linux/md/.config/nvim/init.vim
badd +34 ~/Dokumenty/linux/Linux/md/.config/nvim/archive/neovide_config.vim
badd +1 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania3.md
badd +601 ~/Dokumenty/Notatki/Semestr_6/Pytania_metafizyczne_w_fizyce.md
badd +48 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Filozofia_jezyka_konspekty/9_Evans_The_causal_theory_of_names.md
badd +244 ~/Dokumenty/Notatki/Semestr_6/Filo_umyslu/Filozofia_umyslu.md
badd +308 ~/Dokumenty/Notatki/Smoluchowski/T6.md
badd +237 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_wy.md
badd +144 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Filozofia_jezyka_konspekty/notatki_czytanie/Kripke_III_referat.md
badd +2 ~/Dokumenty/Notatki/README.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_1_6.md
badd +14 ~/Dokumenty/Notatki/Semestr_6/grantowe.md
badd +18 ~/Dokumenty/Notatki/Semestr_6/Filozofia_nauki.md
badd +9 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Filo_nauki_konspekty/Popper_7_11.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania1.md
badd +381 ~/Dokumenty/Notatki/Semestr_6/Heidegger_cw.md
badd +23 ~/Dokumenty/linux/Linux/md/.config/nvim/archive/config_for_gruvbox.vim
badd +2189 ~/Dokumenty/Notatki/Semestr_6/Reizm.md
badd +1241 ~/Dokumenty/Notatki/Semestr_6/Wspolczesna_cw.md
badd +1216 ~/Dokumenty/Notatki/Semestr_6/Filozofia_jezyka.md
badd +15 ~/Dokumenty/linux/Linux/onlyoffice_shortcuts.md
badd +2623 ~/Dokumenty/Notatki/Semestr_6/Spor_o_nature_metafizyki.md
badd +5 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania2.md
badd +6 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Czytelnia_Lucka/Licencjat.md
badd +114 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Czytelnia_Lucka/Van_benthem_logic_of_time.md
badd +236 ~/Dokumenty/Notatki/Semestr_6/Filozofia_umyslu.md
badd +1 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Metafizyczne_pytania_w_fizyce/zadania4.md
badd +508 ~/Dokumenty/Notatki/Semestr_6/Filozofia_informacji.md
badd +4 ~/Dokumenty/Notatki/Semestr_6/konspekty_zadania/Filozofia_jezyka_konspekty/8_Donnellan_Naming_and_identifying_descriptions.md
badd +55 ~/Dokumenty/Notatki/Semestr_6/Czytanie_tekstow_i_nie_tylko/Czytelnia_Lucka/Wroblewski_skretnosc.md
badd +155 ~/Dokumenty/linux/Linux/md/.config/alacritty/alacritty.yml
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
