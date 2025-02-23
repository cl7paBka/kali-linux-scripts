# This script installs Yandex Music on Kali Linux using the cucumber-space repository
# and then creates a desktop shortcut for easy access.

# Thanks to: https://github.com/cucumber-sp/yandex-music-linux

# Download the GPG key for the cucumber-space repository and store it in the keyrings directory.
curl -fsSL https://apt.cucumber-space.online/key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/cucumber-space.key.gpg

# Add the cucumber-space repository to your apt sources list using the downloaded key.
echo 'deb [signed-by=/etc/apt/keyrings/cucumber-space.key.gpg] https://apt.cucumber-space.online ./' | sudo tee /etc/apt/sources.list.d/cucumber-space.list > /dev/null

# Update the package lists to include packages from the new repository.
sudo apt update

sudo apt install yandex-music

# Create a desktop shortcut for Yandex Music:
# Copy the system-wide .desktop file from /usr/share/applications to the user's Desktop directory.
cp /usr/share/applications/yandex-music.desktop $HOME/Desktop/

# Make the desktop shortcut executable so that it can be launched with a double-click.
chmod +x $HOME/Desktop/yandex-music.desktop
