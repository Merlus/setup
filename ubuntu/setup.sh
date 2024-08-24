#!/bin/bash

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy the zshrc file
wget -O $HOME/.zshrc https://raw.githubusercontent.com/Merlus/setup/main/ubuntu/.zshrc

# Install Bicep
az bicep install

# Install tfenv
git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
tfenv install latest
tfenv use latest
terraform -install-autocomplete