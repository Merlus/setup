#!/bin/bash

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k &&

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting &&

# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &&

# Copy the zshrc file and .p10k.zsh file
wget -O $HOME/.zshrc https://raw.githubusercontent.com/Merlus/setup/main/ubuntu/.zshrc &&
wget -O $HOME/.p10k.zsh https://raw.githubusercontent.com/Merlus/setup/main/ubuntu/.p10k.zsh &&

# make pwsh executable
chmod +x $(readlink -f /usr/local/bin/pwsh)

# add packages
apt-get update && apt-get install -y \
  neovim \
  bat &&

# fix batcat
mkdir -p ~/.local/bin &&
ln -s /usr/bin/batcat ~/.local/bin/bat &&

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf &&
~/.fzf/install &&

# install nerd fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip &&
unzip Meslo.zip -d ~/.fonts &&
fc-cache -fv &&

# confifgure nvim kickstart
git clone https://github.com/merlus/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim