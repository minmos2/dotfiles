#!/bin/sh
sudo dnf remove akregator kolourpaint kpat kadressbook kmail kmouth neochat

dnf copr enable lihaohong/yazi
sudo dnf install btop neovim bat asciiquarium kitty fastfetch ranger fzf python3 xournalpp git make gcc yazi

#flatpak
flatpak install flathub com.nextcloud.desktopclient.nextcloud
flatpak install flathub com.bitwarden.desktop 
flatpak install flathub com.discordapp.Discord  
flatpak install flathub org.signal.Signal
flatpak install flathub org.videolan.VLC
flatpak install flathub it.mijorus.gearlever

#netbird
curl -fsSL https://pkgs.netbird.io/install.sh | sh

#vscode (commands from vscode website)
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

dnf check-update
sudo dnf install code

#install codecs
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install libavcodec-freeworld
