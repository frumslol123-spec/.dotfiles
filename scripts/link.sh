#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

backup() {
  if [ -e "$1" ] && [ ! -L "$1" ]; then
    echo "Backing up $1 -> $1.bak"
    mv "$1" "$1.bak"
  fi
}
link() {
  [ -e "$1" ] || { echo "skip (missing source): $1"; return 0; }
  backup "$2"
  ln -sfn "$1" "$2"
  echo "linked $2 -> $1"
}

echo "Linking dotfiles..."
mkdir -p "$HOME/.config" "$HOME/.local/bin"

for d in "$DOTFILES"/config/*/; do
  link "${d%/}" "$HOME/.config/$(basename "$d")"
done

link "$DOTFILES/home/.zshrc"          "$HOME/.zshrc"
link "$DOTFILES/home/.gitconfig"      "$HOME/.gitconfig"
link "$DOTFILES/bin/tmux-sessionizer" "$HOME/.local/bin/tmux-sessionizer"

echo "Linked."
