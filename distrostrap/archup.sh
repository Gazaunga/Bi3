#!/usr/bin/env bash

#install pacaur

set -e

echo "Installing prerequisites for pacaur..."
sudo pacman -S base-devel fakeroot jshon expac

echo "Installing pacaur..."
mkdir /tmp/tmp-pacaur
cd /tmp/tmp-pacaur
wget https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=pacaur
makepkg
sudo pacman --noconfirm -U *.tar.xz
cd -

echo "Installing base packages..."
pacaur --noconfirm --noedit -S \
  package \
  package

echo "Installing window manager dependencies..."
pacaur --noconfirm --noedit -S \
  xcb-util-keysyms \
  xcb-util-wm \
  xcb-util-cursor \
  yajl \
  startup-notification \
  libev

echo "Installing tools..."
pacaur --noconfirm --noedit -S \
  i3lock \
  i3blocks-gaps-git \
  i3status-git \
  feh \
  acpi \
  xdotool \
  pulseaudio-ctl \
  pavucontrol \
  network-manager-applet \
  networkmanager-openvpn \
  imagemagick \
  dunst \
  compton-git \
  ttf-font-awesome \
  ttf-hack \
  powerline-fonts-git \
  thunar \
  thunar-archive-plugin \
  file-roller \
  tumbler \
  evince \
  rofi \
  libmtp \
  gvfs-mtp \
  openssh \
  arandr \
  xclip \
  youtube-dl \
  neofetch-git \
  w3m \
  htop \
  bluez \
  bluez-utils \
  pulseaudio-bluetooth \
  blueman \
  redshift \
  firefox \
  lm_sensors
