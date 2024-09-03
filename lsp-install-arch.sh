
#!/bin/bash

# Update system and install necessary packages
sudo pacman -Syu --needed npm go rustup cargo python-pip lua luarocks --noconfirm

# Astro LSP
npm install -g @astrojs/language-server

# Bash LSP
npm install -g bash-language-server

# CSS/SCSS LSP
npm install -g vscode-langservers-extracted

# Diff LSP
npm install -g diff-langserver

# Docker Compose LSP
npm install -g dockerfile-language-server-nodejs

# Env LSP (dotenv)
npm install -g vscode-dotenv-linter

# Go LSP
go install golang.org/x/tools/gopls@latest

# GraphQL LSP
npm install -g graphql-language-service-cli

# HTML LSP
npm install -g vscode-langservers-extracted

# INI LSP
npm install -g ini-language-server

# JavaScript/TypeScript/JSX/TSX LSP
npm install -g typescript typescript-language-server

# JSON LSP
npm install -g vscode-langservers-extracted

# Log LSP (log file highlighting)
npm install -g log-language-server

# Lua LSP
sudo pacman -S lua-language-server --noconfirm

# Markdown LSP
npm install -g unified-language-server

# PowerShell LSP
sudo pacman -S powershell --noconfirm
pwsh -Command "Install-Module -Name PowerShellEditorServices -Force"

# Python LSP
pip install python-lsp-server

# Regex LSP
npm install -g vscode-langservers-extracted

# Rust LSP
rustup component add rust-analyzer

# SQL LSP
npm install -g sql-language-server

# TOML LSP
cargo install taplo-cli

# Vue LSP
npm install -g @volar/server

# XML LSP
npm install -g vscode-xml

# YAML LSP
npm install -g yaml-language-server

echo "All LSPs have been installed."
