sudo apt update && sudo apt upgrade -y
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

if [ ! -f /tmp/restart_marker ]; then
    touch /tmp/restart_marker
    sudo reboot
    exit 0
fi

rm -f /tmp/restart_marker
flatpak install -y flathub com.brave.Browser
flatpak install -y flathub net.lutris.Lutris
flatpak install -y flathub com.heroicgameslauncher.hgl
flatpak install -y flathub com.valvesoftware.Steam
flatpak install -y flathub com.usebottles.bottles
flatpak run com.brave.Browser &
flatpak run net.lutris.Lutris &
flatpak run com.heroicgameslauncher.hgl &
flatpak run com.valvesoftware.Steam &
flatpak run com.usebottles.bottles &
exit 0
