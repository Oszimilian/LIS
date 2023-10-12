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
#flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub org.mozilla.Thunderbird -y
flatpak install flathub org.kde.umbrello -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub net.ankiweb.Anki -y
flatpak install flathub org.filezillaproject.Filezilla -y

#install qemu
#sudo apt install qemu-kvm virt-manager virtinst libvirt-clients bridge-utils libvirt-daemon-system -y
#sudo systemctl enable --now libvirtd
#sudo systemctl start libvirtd
#sudo systemctl status libvirtd
#sudo usermod -aG kvm $USER
#sudo usermod -aG libvirt $USER

#install KiCad
sudo add-apt-repository ppa:kicad/kicad-7.0-releases -y
sudo apt update -y
sudo apt install kicad -y

#add User var to Git
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

#install code
sudo apt-get install wget gpg -y
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https -y
sudo apt update -y
sudo apt install code -y
