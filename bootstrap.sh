#!/usr/bin/env bash
set -euo pipefail
DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$DOTFILES/scripts/packages.sh"
bash "$DOTFILES/scripts/shell.sh"
bash "$DOTFILES/scripts/link.sh"

echo "Done. Log out/in (or 'exec zsh') and launch nvim once to let plugins install."
