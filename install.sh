#!/usr/bin/env bash

echo -e "symlinking dotfiles to home dir"
ln -sf ~/.dotfiles/.emacs ~/.emacs
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.tmuxinator ~/.tmuxinator
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
