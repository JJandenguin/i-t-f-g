git clone https://github.com/JJandenguin/i-t-f-g.git ~/i-t-f-g

# Run the first part of the installation script
cd ~/i-t-f-g
chmod +x auto-install-pt1.sh
./auto-install-pt1.sh

echo "System will restart to continue the installation process."
touch ~/restart_marker

(crontab -l ; echo "@reboot /bin/bash ~/i-t-f-g/after-reboot.sh") | crontab -

sudo reboot
exit 0
