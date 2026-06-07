#!/bin/bash

packages=(
    zsh
    git
    neovim
    tmux
    fzf
    ripgrep
    fd
    rofi-wayland
    alacritty
    pavucontrol
    hyprshutdown
)

sudo pacman -S --needed "${packages[@]}"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
