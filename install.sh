#!/usr/bin/env bash
#
# install.sh — symlink this repo's .config/* into ~/.config
#
# Usage: ./install.sh

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$DOTFILES_DIR/.config"
DEST_DIR="$HOME/.config"

APPS=(sway waybar rofi kitty)

echo "Installing dotfiles from: $SRC_DIR"
echo "Target config directory:  $DEST_DIR"
echo

mkdir -p "$DEST_DIR"

for app in "${APPS[@]}"; do
    src="$SRC_DIR/$app"
    dest="$DEST_DIR/$app"

    if [ ! -d "$src" ]; then
        echo "Skipping '$app' (not found in $src)"
        continue
    fi

    # Back up existing config if it exists and isn't already our symlink
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        if [ -L "$dest" ] && [ "$(readlink -f "$dest")" = "$(readlink -f "$src")" ]; then
            echo "'$app' already linked, skipping"
            continue
        fi
        backup="${dest}.bak.$(date +%Y%m%d%H%M%S)"
        echo "Backing up existing '$app' config to $backup"
        mv "$dest" "$backup"
    fi

    ln -sfn "$src" "$dest"
    echo "Linked $app -> $dest"
done

echo
echo "Done! Reload your session, e.g.:"
echo "  swaymsg reload"
