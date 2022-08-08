## Official Repos ##

sudo pacman -Syu base-devel --no-confirm &&
sudo pacman -Syu docker --no-confirm &&
sudo pacman -Syu httrack --no-confirm &&
# KVM
sudo pacman -Syu archlinux-keyring --no-confirm &&
sudo pacman -Syu quemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat --no-confirm &&
sudo pacman -Syu ebtables iptables --no-confirm &&
sudo pacman -Syu elibquestfs --no-confirm &&
sudo pacman -Syu lutris --no-confirm &&
sudo pacman -Syu steam --no-confirm &&
sudo pacman -Syu telegram-desktop --no-confirm &&
sudo pacman -Syu wine --no-confirm &&

## aur ##
sudo pamac build spotify --no-confirm && 

## flatpaks ##
flatpak install com.bitwarden.desktop -y &&

## snaps ##
sudo snap install onlyoffice-desktopeditors &&
sudo snap install code --classic &&

## Latte ##
git clone https://github.com/tobecci/kde-settings/ &&
qdbus org.kde.lattedock /Latte org.kde.LatteDock.switchToLayout "kde-settings/tobecci.layout.latte" &&

## Configure Docker ##
sudo systemctl start docker.service &&
sudo systemctl enable docker.service &&
sudo usermod -aG docker $USER 
