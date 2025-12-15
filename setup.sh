#!/bin/bash
set -e
sudo chsh "$(id -un)" --shell "/usr/bin/zsh"
DOTFILES_REPO="https://github.com/DievselMaestro/dotfiles.git"
DOTFILES_DIR="/home/vscode/dotfiles/.devcontainer"


cp $DOTFILES_DIR/devcontainer.json .devcontainer/devcontainer.json 

gitpod devcontainer rebuild
