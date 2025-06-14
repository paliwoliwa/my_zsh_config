#!/bin/bash
sudo pacman -Syu --noconfirm zsh git curl
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
git clone https://github.com/paliwoliwa/my_zsh_config.git ~/.zsh-config
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
cp "$HOME/.zsh-config/.zshrc" "$HOME/"
cp -r "$HOME/.zsh-config/custom/plugins" "$HOME/.oh-my-zsh/custom/"
chsh -s $(which zsh)
echo "Zsh установлен Arch Linux"
