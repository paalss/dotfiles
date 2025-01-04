#!/bin/sh

# Check if the script is run inside a tmux session
if [ -z "$TMUX" ]; then
    tmux new-session -d -s mysession # Start a new tmux session in detached mode
    tmux send-keys 'nvim' C-m       # Send the 'nvim' command to the session
    tmux split-window -v -p 10      # Split the window vertically
    tmux attach-session -t mysession  # Attach to the new session
    exit  # Exit the script after attaching
fi

