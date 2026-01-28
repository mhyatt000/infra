
# Create a user and group for Ollama:
sudo useradd -r -s /bin/false -U -m -d /usr/share/ollama ollama
sudo usermod -a -G ollama $(whoami)

# Create a service file in /etc/systemd/system/ollama.service:
# ...

# Then start the service:
sudo systemctl daemon-reload
sudo systemctl enable ollama
