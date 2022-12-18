#!/bin/bash

sudo apt-get update && sudo apt-get dist-upgrade -y
sudo apt-get install build-essential -y

# packages
sudo apt install git curl zsh -y

sudo chsh -s $(which zsh)

# oh my zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

# homebrew packages
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" -y
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /home/virtual/.zprofile
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/virtual/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
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
    cd ~ && git clone https://github.com/ryanoasis/nerd-fonts.git
    cd ~/nerf-fonts
    chmox +x install.sh && sudo ./install.sh -y

fi
# deb installs
