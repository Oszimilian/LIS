#!/bin/bash

# Update the PC
sudo apt update -y
sudo apt upgrade -y

# Usefull Programms
sudo apt install gedit git cmake gcc g++ clang terminator wget -y

# Init Flatpak
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


# install flatpaks
flatpak install flathub com.discordapp.Discord -y
flatpak install flathub com.slack.Slack -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub org.kde.umbrello -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.spotify.Client -y

#install qemu
sudo apt install qemu-kvm virt-manager virtinst libvirt-clients bridge-utils libvirt-daemon-system -y
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER
