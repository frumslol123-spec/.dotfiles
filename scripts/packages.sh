#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
strip() { grep -vE '^\s*(#|$)' "$1"; }   # allow # comments + blank lines

echo "==> System update"
sudo pacman -Syu --noconfirm

echo "==> Native packages"
strip "$DOTFILES/packages/pacman.txt" | xargs -r sudo pacman -S --needed --noconfirm

# Bootstrap yay (it lives in the AUR, so it can't come from a list)
if ! command -v yay &>/dev/null; then
  echo "==> Installing yay"
  sudo pacman -S --needed --noconfirm base-devel git
  tmp="$(mktemp -d)"
  git clone https://aur.archlinux.org/yay.git "$tmp/yay"
  (cd "$tmp/yay" && makepkg -si --noconfirm)
  rm -rf "$tmp"
fi

echo "==> AUR packages"
strip "$DOTFILES/packages/aur.txt" | xargs -r yay -S --needed --noconfirm
