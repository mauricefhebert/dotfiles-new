
# PowerShell script to install LSPs on Windows with pre-checks for necessary tools

# Function to check if a command exists
function CommandExists {
    param ($command)
    return Get-Command $command -ErrorAction SilentlyContinue
}

# Install npm using winget if not installed
if (-not (CommandExists "npm")) {
    Write-Host "npm not found. Installing Node.js..."
    winget install OpenJS.NodeJS -e --id OpenJS.NodeJS.LTS
}

# Install pip using winget if not installed
if (-not (CommandExists "pip")) {
    Write-Host "pip not found. Installing Python..."
    winget install Python.Python.3
}

# Install rustup using winget if not installed
if (-not (CommandExists "rustup")) {
    Write-Host "rustup not found. Installing Rust..."
    winget install Rustlang.Rustup
    rustup-init.exe -y
}

# Install go using winget if not installed
if (-not (CommandExists "go")) {
    Write-Host "Go not found. Installing Go..."
    winget install GoLang.Go
}

# Install Chocolatey (choco) if not installed
if (-not (CommandExists "choco")) {
    Write-Host "Chocolatey not found. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; `
    [System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install git if not installed
if (-not (CommandExists "git")) {
    Write-Host "git not found. Installing git ..."
    winget install git
}

# Create a temp folder for installation
$folder = "~/install-temp"
New-Item -Path $folder -Type Directory
cd $folder

# Bash LSP
npm install -g bash-language-server

# CSharp LSP
# git clone https://github.com/OmniSharp/csharp-language-server-protocol.git
# cd csharp-language-server-protocol
# .\build.ps1

# CSS/SCSS LSP
npm install -g vscode-langservers-extracted

# Tailwind css
npm install -g @tailwindcss/language-server

# Docker Compose LSP
npm install -g dockerfile-language-server-nodejs

# Go LSP
go install golang.org/x/tools/gopls@latest

# GraphQL LSP
npm install -g graphql-language-service-cli

# HTML LSP
npm install -g vscode-langservers-extracted

# JavaScript/TypeScript/JSX/TSX LSP
npm install -g typescript typescript-language-server

# JSON LSP
npm install -g vscode-langservers-extracted

# Lua LSP
choco install lua-language-server -y

# Markdown LSP
winget install marksman

# Python LSP
pip install python-lsp-server

# Rust LSP
rustup component add rust-analyzer

# SQL LSP
npm install -g sql-language-server

# TOML LSP
cargo install taplo-cli

# Vue LSP
npm install -g @vue/language-server

# YAML LSP
npm install -g yaml-language-server

Write-Host "All LSPs have been installed."

Write-Host "Cleaning up temp file ..."

# Delete folder A and all contents
if (Test-Path -Path $folder ) {
    Remove-Item -Path $folder -Recurse
}

Write-Host "Cleanup completed."

Write-Host "Installing debugger ..."
winget install llvm
go install github.com/go-delve/delve/cmd/dlv@latest

# Formatter
Write-Host "Installing prettier"
npm install -g prettier
