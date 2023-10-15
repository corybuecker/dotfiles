#!/bin/sh

tmux new -d -s development
tmux split-window -v
tmux resize-pane -t 1 -y 20%
tmux -2 attach-session -d
