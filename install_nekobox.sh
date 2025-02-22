#!/bin/bash

echo "HOME is set to: $HOME"

# Create /opt directory if it doesn't exist
sudo mkdir -p /opt

# Navigate to /opt
cd /opt || { echo "Failed to cd to /opt"; exit 1; }

# Download, unzip, and remove the .zip file
echo
wget https://github.com/MatsuriDayo/nekoray/releases/download/4.0.1/nekoray-4.0.1-2024-12-12-linux64.zip && \
unzip nekoray-4.0.1-2024-12-12-linux64.zip && \
rm nekoray-4.0.1-2024-12-12-linux64.zip

# Create the desktop shortcut
cat <<EOF > $HOME/Desktop/nekobox.desktop
[Desktop Entry]
Name=NekoBox
Comment=NekoRay Proxy Client
Exec=/opt/nekoray/nekobox
Icon=/opt/nekoray/nekobox.png
Terminal=false
Type=Application
Categories=Network;Utility;
EOF

# Make the desktop shortcut executable
sudo chmod +x $HOME/Desktop/nekobox.desktop

sudo chown -R $SUDO_USER:$SUDO_USER /opt/nekoray

echo "NekoBox installation and shortcut creation completed!"
