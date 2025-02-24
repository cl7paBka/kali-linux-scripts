#!/bin/bash

# Download the DBeaver Community Edition package and save it as installed_dbeaver_package.deb
wget -O installed_dbeaver_package.deb https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb

# Install the downloaded package using dpkg
sudo dpkg -i installed_dbeaver_package.deb

# Remove the installation package file after installation
sudo rm -rf installed_dbeaver_package.deb

echo "DBeaver package has been downloaded and installed successfully."
