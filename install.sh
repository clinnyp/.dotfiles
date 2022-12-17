#!/bin/bash

sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y

# packages
sudo apt install git zsh -y

sudo chsh -s $(which zsh)

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# homebrew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install neovim
brew install watchman
brew install stow

# dotfiles
cd ~
git clone https://github.com/clintonphilathong/.dotfiles.git 
cd ~/.dotfiles
stow .

# flatpak installs
if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ];
then
        echo "This is Windows WSL baby!"
else
    sudo apt install flatpak -y
fi
# deb installs
