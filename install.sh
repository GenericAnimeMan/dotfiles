#!/bin/bash

#install i3 and dependencies
sudo pacman -Sy --needed i3-gaps alacritty rofi dmenu lxapperance libev libxkbcommon-x11 pango perl startup-notification xcb-util-cursor xcb-util-keysyms xcb-util-wm xcb-util-xrm yajl i3lock i3status i3blocks tar feh maim blueman kdeconnect networkmanager network-manager-applet nm-connection-editor git base-devel

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

yay -S picom-jonaburg-git twmn-git

#download gtk theme, extract and install.
wget https://github.com/EliverLara/Nordic/releases/download/v2.1.0/Nordic-darker-v40.tar.xz
tar -xf Nordic-darker-v40.tar.xz
mkdir ~/.themes
rm -r ~/.themes/Nordic-darker-v40
cp -r Nordic-darker-v40 ~/.themes

#install dotfiles and delete old
rm -r ~/.config/rofi
rm -r ~/.config/i3
rm -r ~/.config/gtk-4.0
rm -r ~/.config/gtk-3.0
rm -r ~/.config/gtk-2.0
rm -r ~/.config/alacritty
rm -r ~/.config/picom.conf
rm -r ~/.config/twmn
cp -r twmn ~/.config/
cp -r .config/. ~/.config/
mkdir ~/.fonts
cp -r .fonts/. ~/.fonts/

echo "install completed"
