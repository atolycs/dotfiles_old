#!/usr/bin/env bash
echo "Updating APT Repo..."
sudo apt update 
echo "Installing build-essential procps curl file git"
sudo apt install -y  build-essential procps curl file git

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
