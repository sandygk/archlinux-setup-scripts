#!/bin/bash
source ./helpers.sh

echo_green "Installing yay..."
sudo pacman -Syu --noconfirm git
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo_green "Installing applications..."
sudo pacman -Syu --noconfirm \
  acpilight \
  alacritty \
  arandr \
  awesome \
  blender \
  code \
  cura \
  dmenu \
  dunst \
  file-roller \
  firefox \
  flameshot \
  fzf \
  gimp \
  git \
  gparted \
  gpick \
  hsetroot \
  inkscape \
  inotify-tools \
  krita \
  maim \
  man \
  mlocate \
  moreutils \
  mpv \
  neovim \
  ntfs-3g \
  numlockx \
  openscad \
  openssh \
  pcmanfm \
  picom \
  pinta \
  playerctl \
  python-pynvim \
  ranger \
  rclone \
  reflector \
  sdcv \
  sxhkd \
  sxiv \
  transmission-gtk \
  udiskie \
  unclutter \
  words \
  xclip \
  xdg-user-dirs \
  xdotool \
  xorg-xev \
  xsel \
  youtube-dl \
  zathura \
  zathura-cb \
  zathura-pdf-mupdf
yay -S --noconfirm \
  dropbox \
  google-chrome \
  nvm \
  vim-plug \
  piavpn-bin \
  pureref \
  simple-mtpfs

echo_green "Installing X..."
sudo pacman -Syu --noconfirm xorg-server xorg-xinit xorg-xrandr xorg-xsetroot

echo_green "Installing audio..."
sudo pacman -Syu --noconfirm pulseaudio pavucontrol pamixer

echo_green "Installing fonts..."
sudo pacman -Syu --noconfirm ttf-joypixels noto-fonts-emoji
yay -S --noconfirm all-repository-fonts

echo_green "Installing GTK and QT themes and tools..."
sudo pacman -Syu --noconfirm \
  gtk3 \
  gnome-themes-extra \
  xfce4-settings
yay -S --noconfirm \
  breeze-snow-cursor-theme \
  breeze-obsidian-cursor-theme \
  papirus-icon-theme-git \
  qt5-styleplugins

echo_green "Installing programming languages..."
sudo pacman -Syu --noconfirm fish python python2 nodejs npm
yay -S --noconfirm fisher nvm
