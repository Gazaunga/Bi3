#!/bin/sh

VERSION="v2.020"
VERSION_="v2_020"
URL="https://github.com/chrissimpkins/Hack/releases/download/"

if test "$(which pacaur)"; then"
pacaur=(  \
  adobe-source-code-pro-fonts \
  adobe-source-sans-pro-fonts \
  adobe-source-serif-pro-fonts \
  otf-texgyre \
  otf-hasklig \
  otf-hermit \
  otf-fira-code \
  ttf-chromeos-fonts \
  ttf-clear-sans \
  ttf-liberation \
  ttf-linux-libertine \
  ttf-noto \
  ttf-roboto \
  font-bh-ttf \
  ttf-iosevka \
  ttf-font-awesome \
  ttf-mac-fonts \
  ttf-font-awesome \
  powerline-fonts-git \
  ttf-symbola
)
pacaur -S --noconfirm --noedit "${pacaur[*]}""}"
