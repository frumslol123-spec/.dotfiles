#!/bin/bash

set -e

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

backupp(){
    local target="$1"

    if [ -e "$target" ] && [ ! -L "$target" ]; then
        echo "Backing up $target -> $target.bak"
        mv "$target" "$target.bak"
    fi
}

link() {
    local src="$1"
    local dst="$2"

    backupp "$dst"
    ln -sfn "$src" "$dst"
}
echo "Installing dotfiles..."

#NVIM
mkdir -p "$HOME/.config"
link "$DOTFILES/config/nvim" "$HOME/.config/nvim"

#zsh
link "$DOTFILES/shell/zsh/.zshrc" "$HOME/.zshrc"
#git
link "$DOTFILES/.gitconfig" "$HOME/.gitconfig"

#hypr
link "$DOTFILES/config/hypr" "$HOME/.config/hypr"

#Tmux
link "$DOTFILES/config/tmux" "$HOME/.config/tmux"
echo "Done."

