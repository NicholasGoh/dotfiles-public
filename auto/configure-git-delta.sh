#!/bin/bash

config="[core]
    pager = delta

[interactive]
    diffFilter = delta --color-only

[delta]
    navigate = true  # use n and N to move between diff sections
    dark = true      # or light = true, or omit for auto-detection
    syntax-theme = gruvbox-dark
    features = gruvbox-dark
    line-numbers = true

[merge]
    conflictstyle = diff3"

gitconfig="$HOME/.gitconfig"

if ! grep -qF "$config" "$gitconfig"; then
  echo "$config" >>"$gitconfig"
  echo "Configuration added to $gitconfig"
else
  echo "Configuration already exists in $gitconfig"
fi
