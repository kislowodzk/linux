# TMUX

## Windows -- basicly tabs

C-s c -- create new window
C-s {number} -- go to (number)-th window
C-s n,p -- go to next/previous window
C-s , -- rename window
C-s w -- window tree (next hjkl or C-p C-n, enter to choose)
C-s f -- find window (name)
C-s & -- kill window
C-s . -- move window to (number)

## Panes -- splitting

C-s % -- vertical split
C-s " -- horizontal split
C-s _ (space) -- toggle between pre-build pane layouts
C-s {arrow keys} -- move between panes
C-s o -- go to next pane
C-s C-o -- swap with next pane
C-s q -- shows pane numbers
C-s q {number} -- go to (number)-th pane
C-s z -- make/undo pane fullscreen
C-s x -- close a pane
C-s C-{arrow keys} -- resize panes

### Moje

C-s C-s -- vertical split
C-s C-x -- horizontal split

C-s C-h select-pane -L
C-s C-j select-pane -D 
C-s C-k select-pane -U
C-s C-l select-pane -R

## Session Management

C-s d -- detatch session
tmux a/attach -- attach existing session (recently used)
tmux ls -- list existing sessions
tmux a -t{number} -- attach target session (number)     # without space after -t
tmux a -t{name} -- attach target session (name)         # without space after -t
tmux rename-session {name} -- rename current session (inside)
C-s $ -- rename current session (inside)
tmux rename-session -t{number} {name} -- rename (number)-th session (outside)

## Customization

source-file ~/.tmux.conf

