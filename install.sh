#!/bin/bash
# Установка Zsh и git (если их нет)
sudo apt-get update
sudo apt-get install -y zsh git curl
# Устанавливаем Oh My Zsh, если его нет
if [ ! -d "$HOME/.oh-my-zsh" ]; then
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
# Клонируем репозиторий конфигурации
git clone https://github.com/paliwoliwa/my_zsh_config.git ~/.zsh-config
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# Копируем конфигурационные файлы
cp "$HOME/.zsh-config/.zshrc" "$HOME/"
cp -r "$HOME/.zsh-config/custom/plugins" "$HOME/.oh-my-zsh/custom/"
# Делаем Zsh шеллом по умолчанию
chsh -s $(which zsh)
echo "Zsh has been installed and configured."
