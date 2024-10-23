#!/bin/bash

. ./settings.sh

tmux -2 new-session -d -s ${TMUX_SESSION}

# First window (DEV))
tmux rename-window "(DEV)"
tmux send-keys "cd ${REPOSITORY_ROOT}; conda activate ${CONDA_ENV}; nvim" C-m

# Split dev window into two panes
tmux split-window -v
tmux resize-pane -D 10
tmux select-pane -t 1
tmux send-keys "cd ${REPOSITORY_ROOT}; conda activate ${CONDA_ENV}; clear " C-m

# Second window (UTIL)
tmux new-window -n "(UTIL)"
tmux send-keys "cd ${REPOSITORY_ROOT}; conda activate ${CONDA_ENV}; clear " C-m

# Select the control window and first pane
tmux select-window -t "(DEV)"
tmux select-pane -t 0

# Reattach
tmux -2 attach-session -t $TMUX_SESSION
