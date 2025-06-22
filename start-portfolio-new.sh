#!/bin/sh

function sendKeys {
    tmux send-keys 'npm run dev' C-m
    tmux split-window -v -p 80
    tmux send-keys 'explorer.exe http://localhost:4321/' C-m
    # tmux send-keys 'cdtenant' C-m
    tmux rename-window PORTFOLIO-NEW
}

# If tmux session is not already open
if [ -z "$TMUX" ]; then
    tmux new-session -d -s session1 # Start a new tmux session in detached mode
    sendKeys
    tmux attach-session -t session1  # Attach to the new session
    exit
fi

sendKeys
