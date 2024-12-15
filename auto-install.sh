sudo apt update && upgrade -y
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.brave.Browser
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.usebottles.bottles
flatpak run com.brave.Browser
flatpak run net.lutris.Lutris
flatpak run com.heroicgameslauncher.hgl
flatpak run com.valvesoftware.Steam
flatpak run com.usebottles.bottles
exit 1