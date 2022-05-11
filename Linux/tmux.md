# TMUX

## Windows

C-a c -- create new window
C-a {number} -- go to (number)-th window
C-a n,p -- go to next/previous window
C-a , -- rename window
C-a w -- window tree (next hjkl or C-p C-n, enter to choose)
C-a f -- find window (name)
C-a & -- kill window
C-a . -- move window to (number)

## Panes

C-a % -- vertical split
C-a " -- horizontal split
C-a _ (space) -- toggle between pre-build pane layouts
C-a {arrow keys} -- move between panes
C-a o -- go to next pane
C-a C-o -- swap with next pane
C-a q -- shows pane numbers
C-a q {number} -- go to (number)-th pane
C-a z -- make/undo pane fullscreen
C-a x -- close a pane
C-a C-{arrow keys} -- resize panes

### Moje

C-a C-s -- vertical split
C-a C-x -- horizontal split

C-a C-h select-pane -L
C-a C-j select-pane -D 
C-a C-k select-pane -U
C-a C-l select-pane -R

## Session Management

C-a d -- detatch session
tmux a/attach -- attach existing session (recently used)
tmux ls -- list existing sessions
tmux a -t{number} -- attach target session (number)     # without space after -t
tmux a -t{name} -- attach target session (name)         # without space after -t
tmux rename-session {name} -- rename current session (inside)
C-a $ -- rename current session (inside)
tmux rename-session -t{number} {name} -- rename (number)-th session (outside)

## Customization

source-file ~/.tmux.conf

