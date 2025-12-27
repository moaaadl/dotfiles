#!/bin/bash

GREEN='\033[0;32m'
DOTFILES_DIR=$(pwd)
CONFIG_DIR="$HOME/.config"

echo "Starting Installation..."

mkdir -p "$CONFIG_DIR"

setup_link() {
  local folder=$1
  if [ -d "$DOTFILES_DIR/$folder" ]; then
    [ -d "$CONFIG_DIR/$folder" ] && [ ! -L "$CONFIG_DIR/$folder" ] && mv "$CONFIG_DIR/$folder" "$CONFIG_DIR/${folder}_backup"

    ln -sfn "$DOTFILES_DIR/$folder" "$CONFIG_DIR/$folder"
  fi
}

setup_link "hypr"
setup_link "mako"
setup_link "waybar"
setup_link "wofi"

echo "🐚 Setting up ZSH..."
[ -f "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ] && mv "$HOME/.zshrc" "$HOME/.zshrc_backup"
ln -sfn "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

echo -e "${GREEN}Done !${NC}"
