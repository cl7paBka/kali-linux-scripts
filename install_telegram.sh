#!/bin/bash
# This script downloads Telegram Desktop, installs it system-wide,
# creates a symbolic link for easy terminal access, and sets up a desktop shortcut.

# 1. Download the Telegram archive from the official website and save it as telegram.tar.xz
wget -O telegram.tar.xz https://telegram.org/dl/desktop/linux

# 2. Extract the contents of the archive.
#    -x : extract files
#    -v : verbose (list files being extracted)
#    -f : specify filename
tar -xvf telegram.tar.xz

# 3. Move the extracted Telegram directory to /opt/telegram for system-wide installation.
sudo mv Telegram /opt/telegram

# 4. Create a symbolic link in /usr/bin so you can launch Telegram from the terminal using the command 'telegram'.
sudo ln -sf /opt/telegram/Telegram /usr/bin/telegram

# 5. Remove the downloaded archive to clean up.
rm -rf telegram.tar.xz

# 6. Create the desktop shortcut for Telegram.
#    The shortcut will appear on your desktop and let you launch Telegram from the graphical interface.
cat <<EOF > $HOME/Desktop/telegram.desktop
[Desktop Entry]
Name=Telegram
Comment=Official Telegram Desktop Client
Exec=/opt/telegram/Telegram
Icon=$HOME/.local/share/icons/telegram.png
Terminal=false
Type=Application
Categories=Network;Chat;InstantMessaging;
EOF

# 7. Make the desktop shortcut executable so that it can be launched with a double-click.
chmod +x $HOME/Desktop/telegram.desktop

echo "Telegram installation and shortcut creation completed!"

