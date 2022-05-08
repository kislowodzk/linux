# Doom emacs guide

## Doome Emacs On Day One -- DT

### Przygotowanie środowiska

Najpierw oczywiście: `sudo apt install emacs`

Potem stronka na githubie -- doom zainstalowany (na wszystkie pytania w trakcie 
odpowiadać 'y')

Dodać do zmiennej PATH ścieżkę:
export PATH="$HOME/.emacs.d/bin:$PATH" // na przykład coś takiego w .zshrc

w konsoli: `doom sync`

I teraz mamy wybór -- albo startujemy serwer demona emacsowego, który zawsze 
będzie działał w tle, albo każdą instancję uruchamiamy osobno, ale wtedy za 
każdym razem kilka sekund zejdzie na uruchomienie

Jeśli chcemy demona, to do autostartu z nim!

`/usr/bin/emacs --daemon`

I wtedy emacsa odpalamy poleceniem

`emacsclient -c -a 'emacs'`

No i te dwie rzeczy mam ustawione w sekcji kościoła emacsa w configu i3

### Korzystanie z emacsa

Alt -- meta

M-x -- polecenie

SPC . -- open a file (M-x find-file)
SPC f r -- open a recent file

SPC b k -- buffer kill

SPC b p -- buffer previous
SPC b n -- buffer next
SPC b i -- see all buffer s

Splity jak w vimie (ctrl-w v/s)

Albo
SPC w v
SPC w s
SPC w c -- close that split (analigicznie do c-w c)

Reload emacs (można za pomocą tego na przykład config załadować)

## Giving Emacs Another Try -- The Linux Cast


























