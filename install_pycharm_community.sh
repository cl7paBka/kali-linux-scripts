#!/bin/bash
# Install PyCharm Community Edition

# Save the current directory (where the script is run)
BASE_DIR=$(pwd)

# Update package lists and install dependencies
sudo apt update
sudo apt install python3 -y
sudo apt install python3-pip -y

# Download the PyCharm Community tarball into the current directory
wget -O "${BASE_DIR}/pycharm_community.tar.gz" "https://download.jetbrains.com/python/pycharm-community-2024.3.tar.gz"

# Extract the tarball
tar -xzvf "${BASE_DIR}/pycharm_community.tar.gz"

# Remove the downloaded tarball
sudo rm -rf pycharm_community.tar.gz

# Move the extracted directory to /opt
sudo mv pycharm-community-2024.3 /opt

# Create the desktop shortcut  
cat <<EOF > $HOME/Desktop/pycharm-community.desktop
[Desktop Entry]
Name=Pycharm Community
Comment=PyCharm Community Edition
Exec="/opt/pycharm-community-2024.3/bin/pycharm.sh" $f
Icon=/opt/pycharm-community-2024.3/bin/pycharm.png
Terminal=false
Type=Application
Categories=Development;IDE;
EOF

# Copy the desktop file to the user's applications directory (so it appears in the launcher)
mkdir -p $HOME/.local/share/applications
cp $HOME/Desktop/pycharm-community.desktop $HOME/.local/share/applications/

# Make the desktop shortcut executable
sudo chmod +x $HOME/Desktop/pycharm-community.desktop

# Create a symlink in /usr/local/bin for terminal launch
sudo ln -sf /opt/pycharm-community-2024.3/bin/pycharm.sh /usr/local/bin/pycharm-community

echo "Installation complete: desktop shortcut, app directory entry and terminal launch symlink created."
