#!/bin/bash

# this is a script intented to be used after a minimal installation of arch linux. It may work on arch based distros but results may differ.

# make sure to chmod +x install.sh before beggining.

# system update
echo "Performing system update"
sleep 1
echo "Insert your password"
sudo pacman -Syu --noconfirm

# aur helper
echo "Yay (aur helper) installation"
sleep 1
sudo pacman -S --needed --noconfirm git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd $HOME

# needed packages
echo "Installing packages"
sleep 1
yay -S --noconfirm bspwm nvidia amd-ucode gcc gvfs gvfs-mtp htop imagemagick kitty neofetch mpv lxappearance polkit-gnome qbittorrent rofi swappy dunst thunar thunar-volman thunar-archive-plugin fileroller unrar unzip  webp-pixbuf-loader pipewire wireplumber pipewire-pulse xclip yt-dlp zsh steam ttf-jetbrains-mono-nerd man pavucontrol firefox plocate tumbler feh bat eza starship picom-ftlabs-git sxhkd npm polybar  

# zsh
echo "Configuring zsh"
sleep 1
mkdir .zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions.git $HOME/.zsh/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/zsh-autosuggestions
chsh -s /bin/zsh

# rofi themes (adi1090x)
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
chmod +x setup.sh
./setup.sh
cd $HOME

# dotfiles
git clone https://github.com/ltlis/dots
cd dots

cp -r config $HOME/.config
cp -r .zshrc $HOME/
cp -r .fonts $HOME/

echo "Installation complete"
echo
echo "You may reboot your system now"
