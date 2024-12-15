if [ -f ~/restart_marker ]; then
    echo "System restarted. Continuing with the second part of the installation."
    rm -f ~/restart_marker
    cd ~/i-t-f-g
    chmod +x auto-install-pt2.sh
    ./auto-install-pt2.sh
    crontab -l | grep -v "@reboot /bin/bash ~/i-t-f-g/post-reboot.sh" | crontab -
else
    echo "error ig"
fi
