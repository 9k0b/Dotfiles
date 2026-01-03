#!/bin/bash

sudo pacman -Syu
sudo pacman -S base-devel git --needed --noconfirm

sudo pacman -S neovim --needed --noconfirm
git clone https://github.com/LazyVim/starter ~/.config/nvim

sudo pacman -S zsh --needed --noconfirm
sudo pacman -S zsh-autosuggestions --needed --noconfirm
sudo pacman -S zsh-syntax-highlighting --needed --noconfirm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

sudo pacman -S ghostty

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S zen-browser-bin --neeeded --noconfirm

sudo pacman -S vivaldi --needed --noconfirm

yay -S lm-studio
curl -fsSL https://ollama.com/install.sh | sh

sudo pacman -S hyprpicker --needed --noconfirm
sudo pacman -S hyprlock --needed --noconfirm
sudo pacman -S hypridle --needed --noconfirm
sudo pacman -S xdg-desktop-portal-hyprland --noconfirm --needed
sudo pacman -S hyprsunset --needed --noconfirm
sudo pacman -S hyprpolkitagent --needed --noconfirm
sudo pacman -S hyprshot --needed --noconfirm

touch ~/.config/hypr/hyprlock.conf
touch ~/.config/hypr/hypridle.conf
touch ~/.config/hypr/hyprsunset.conf

sudo pacman -S pipewire wireplumber --needed --noconfirm

sudo pacman -S qt5-wayland qt6-wayland

sudo pacman -S otf-geist-mono-nerd otf-font-awesome --noconfirm --needed

sudo pacman -S swww --needed --noconfirm

sudo pacman -S wl-clipboard cliphist wl-clip-persist --needed --noconfirm

sudo pacman -S linux-headers --needed --noconfirm

sudo pacman -S virtualbox virtualbox-host-modules-arch --needed --noconfirm
systemd-modules-load.service
modprobe vboxdrv
sudo pacman -S virtualbox-ext-oracle

sudo pacman -S keepassxc --needed --noconfirm

sudo pacman -S obsidian --needed --noconfirm

sudo pacman -S zellij --needed --noconfirm

sudo pacman -S fzf --needed --noconfirm
sudo pacman -S exa --needed --noconfirm
sudo pacman -S ripgrep --needed --noconfirm
sudo pacman -S bat --needed --noconfirm

sudo pacman -R btop --needed --noconfirm
sudo pacman -S btop --needed --noconfirm

sudo pacman -S waybar --needed --noconfirm
sudo pacman -S swaync --needed --noconfirm

sudo pacman -S fastfech

mkdir ~/media
mkdir ~/media/pictures
mkdir ~/media/audio
mkdir ~/media/audio/music
mkdir ~/media/audio/sound
mkdir ~/media/videos

yay -S balena-etcher --needed --noconfirm

sudo pacman -S docker --needed --noconfirm
sudo pacman -S lazydocker --needed --noconfirm
