#!/bin/bash

#detach from a tmux session if in one
tmux detach > /dev/null ^ /dev/null

# don't set up the workspace if there's already a RING session running
#if tmux list-sessions -F "#{session\_name}" | grep -q "RING";
    #echo "RING session already running"
#else

cd ~/classmarkets/ring-workspace

#Create RING window
tmux new -d -s RING
tmux rename-window RING
tmux send-keys "clear" C-m
tmux split-window -h -p 80
tmux send-keys "cd ~/classmarkets/ring-workspace/ring-web" C-m
tmux send-keys "clear" C-m

#Open sandbox window
tmux new-window -n SANDBOX
tmux send-keys "cd" C-m
tmux select-window -t 0

tmux attach-session -t RING
end
