# TMUX

## Windows

C-b c -- create new window
C-b {number} -- go to (number)-th window
C-b n,p -- go to next/previous window
C-b , -- rename window
C-b w -- window tree (next hjkl or C-p C-n, enter to choose)
C-b f -- find window (name)
C-b & -- kill window

## Panes

C-b % -- vertical split
C-b " -- horizontal split
C-b _ (space) -- toggle between pre-build pane layouts
C-b {arrow keys} -- move between panes
C-b o -- go to next pane
C-b C-o -- swap with next pane
C-b q -- shows pane numbers
C-b q {number} -- go to (number)-th pane
C-b z -- make/undo pane fullscreen
C-b x -- close a pane
C-b C-{arrow keys} -- resize panes

### Moje

C-b C-s -- vertical split
C-b C-x -- horizontal split

C-a C-h select-pane -L
C-a C-j select-pane -D 
C-a C-k select-pane -U
C-a C-l select-pane -R

## Session Management

C-b d -- detatch session
tmux a/attach -- attach existing session (recently used)
tmux ls -- list existing sessions
tmux a -t{number} -- attach target session (number)     # without space after -t
tmux a -t{name} -- attach target session (name)         # without space after -t
tmux rename-session {name} -- rename current session (inside)
tmux rename-session -t{number} {name} -- rename (number)-th session (outside)

## Customization

source-file ~/.tmux.conf

