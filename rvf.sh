#!/usr/bin/env bash

# "live grep / text search"
# https://github.com/junegunn/fzf/blob/master/ADVANCED.md#ripgrep-integration

# requirements:
# - bat
# - ripgrep
# - fzf

# 1. Search for text in files using Ripgrep
# 2. Interactively narrow down the list using fzf
# 3. Open the file in nvim
rg --color=always --line-number --no-heading --smart-case "${*:-}" |
  fzf --ansi \
      --color "hl:-1:underline,hl+:-1:underline:reverse" \
      --delimiter : \
      --preview 'cat' \
      --preview-window 'up,60%,border-bottom,+{2}+3/3,~3' \
      --bind 'enter:become(nvim {1} +{2})'
