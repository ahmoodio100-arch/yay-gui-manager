#!/usr/bin/env bash
# install-dependencies.sh
# Convenience script to install system dependencies for Yay GUI Manager on Arch-based systems.

set -e

echo "Installing dependencies via pacman..."
sudo pacman -Syu --needed python python-pyqt5 yay git base-devel

echo
echo "Done. You can now run:"
echo "  python yay_gui.py"
