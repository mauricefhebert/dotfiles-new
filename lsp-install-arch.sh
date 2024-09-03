
#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Update system and install necessary tools if not installed
sudo pacman -Syu --noconfirm

# Install npm if not installed
if ! command_exists npm; then
    echo "npm not found. Installing Node.js..."
    sudo pacman -S --noconfirm nodejs npm
fi

# Install pip if not installed
if ! command_exists pip; then
    echo "pip not found. Installing Python..."
    sudo pacman -S --noconfirm python-pip
fi

# Install rustup if not installed
if ! command_exists rustup; then
    echo "rustup not found. Installing Rust..."
    sudo pacman -S --noconfirm rustup
    rustup-init -y
    source $HOME/.cargo/env
fi

# Install go if not installed
if ! command_exists go; then
    echo "Go not found. Installing Go..."
    sudo pacman -S --noconfirm go
fi

# Install yay if not installed
if ! command_exists yay; then
    echo "yay not found. Installing yay..."
    sudo pacman -S --needed git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

# Install git if not installed
if ! command_exists git; then
    echo "git not found. Installing git ..."
    sudo pacman -S --noconfirm git
fi

# Create a temp directory for installation
TEMP_DIR=~/install-temp
mkdir -p "$TEMP_DIR"
cd "$TEMP_DIR"

# Install LSPs

# Bash LSP
sudo npm install -g bash-language-server

# CSS/SCSS LSP
sudo npm install -g vscode-langservers-extracted

# Tailwind css
sudo npm install -g @tailwindcss/language-server

# Docker Compose LSP
sudo npm install -g dockerfile-language-server-nodejs

# Go LSP
go install golang.org/x/tools/gopls@latest

# GraphQL LSP
sudo npm install -g graphql-language-service-cli

# HTML LSP
sudo npm install -g vscode-langservers-extracted

# JavaScript/TypeScript/JSX/TSX LSP
sudo npm install -g typescript typescript-language-server

# JSON LSP
sudo npm install -g vscode-langservers-extracted

# Lua LSP
yay -S lua-language-server

# Markdown LSP
sudo pacman -S --noconfirm marksman

# Python LSP
pip install python-lsp-server

# Rust LSP
rustup component add rust-analyzer

# SQL LSP
sudo npm install -g sql-language-server

# TOML LSP
cargo install taplo-cli

# Vue LSP
sudo npm install -g @vue/language-server

# YAML LSP
sudo npm install -g yaml-language-server

echo "All LSPs have been installed."

# Cleanup temp directory
echo "Cleaning up temp files..."
rm -rf "$TEMP_DIR"
echo "Cleanup completed."

# Install debugger tools
echo "Installing debugger..."
sudo pacman -S --noconfirm llvm
go install github.com/go-delve/delve/cmd/dlv@latest

# Formatter
echo "Installing formatter"
sudo npm install -g prettier
