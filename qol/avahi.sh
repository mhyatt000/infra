sudo apt install -y avahi-daemon libnss-mdns
sudo systemctl enable --now avahi-daemon

# hostnamectl set-hostname myhost
sudo systemctl restart avahi-daemon
#

