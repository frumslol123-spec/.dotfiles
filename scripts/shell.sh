#!/usr/bin/env bash
set -euo pipefail

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "==> Installing oh-my-zsh"
  RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
for repo in zsh-users/zsh-autosuggestions zsh-users/zsh-syntax-highlighting; do
  dir="$ZSH_CUSTOM/plugins/${repo#*/}"
  [ -d "$dir" ] || git clone --depth 1 "https://github.com/$repo" "$dir"
done

if [ "$(basename "$SHELL")" != "zsh" ]; then
  echo "==> Setting zsh as default shell"
  chsh -s "$(command -v zsh)"
fi
