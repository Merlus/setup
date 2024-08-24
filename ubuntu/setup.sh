#!/bin/bash

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# zsh syntax highlighting add to .zshrc ohmyzsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh autosuggestions add to .zshrc ohmyzsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy the zshrc file
wget -O $HOME/.zshrc https://raw.githubusercontent.com/Merlus/setup/main/ubuntu/.zshrc

# Install Bicep as dev user
az bicep install

# Install tfenv as dev user
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv