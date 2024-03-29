#!/usr/bin/sh

#!/bin/bash
declare -A osInfo;
osInfo[/etc/debian_version]="apt-get install -y"
osInfo[/etc/alpine-release]="apk --update add"
osInfo[/etc/centos-release]="yum install -y"
osInfo[/etc/fedora-release]="dnf install -y"
osInfo[/etc/arch-release]="pacman -Syuu"

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
        package_manager=${osInfo[$f]}
    fi
done

packages="git zsh neovim xorg xorg-xinit wget jq pipewire pipewire-pulse picom dunst nitrogen bspwm polybar sxhkd rofi newsboat"

sudo ${package_manager} ${packages}
