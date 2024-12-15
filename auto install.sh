echo "updating and upgrading"
sudo apt update && upgrade -y

echo "installing faltpak"
sudo apt install flatpak

echo "installing brave"
flatpak run com.brave.Browser

echo "installing lutris"
flatpak run net.lutris.Lutris

echo "installing heroic"
flatpak run com.heroicgameslauncher.hgl

echo "installing steam"
flatpak run com.valvesoftware.Steam

echo "installing bottels"
flatpak run com.usebottles.bottles

echo "ensuring everything is up to date..."
sudo apt update && upgrade -y

echo "install sucessful!... now exiting"
exit 1