echo "updating and upgrading"
sudo apt update && upgrade -y

echo "installing faltpak"
if sudo apt install flatpak
else echo "insalling flatpak failed"
exit 1
fi

echo "installing brave"
if flatpak run com.brave.Browser
else echo "brave install failed"
fi

echo "installing lutris"
if flatpak run net.lutris.Lutris
else echo "lutris install failed"
fi

echo "installing heroic"
if flatpak run com.heroicgameslauncher.hgl
else echo "heroic install failed"
fi

echo "installing steam"
if flatpak run com.valvesoftware.Steam
else echo "steam install failed"
fi

echo "installing bottels"
if flatpak run com.usebottles.bottles
else echo "bottels install failed"
fi

echo "ensuring everything is up to date..."
sudo apt update && upgrade -y

echo "install sucessful!... now exiting"
exit 1