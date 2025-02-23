# Kali Linux Quick Install Scripts

This repository contains simple Bash scripts to quickly install various applications on Kali Linux or other Debian/Ubuntu-based systems. All scripts require **sudo/root** privileges to run.

## Scripts

- [install_nekobox.sh](https://github.com/cl7paBka/kali-linux-scripts/blob/main/install_nekobox.sh)  
  Installs **Nekobox**, the **NekoRay Proxy Client**.

- [install_pycharm_community.sh](https://github.com/cl7paBka/kali-linux-scripts/blob/main/install_pycharm_community.sh)  
  Installs **PyCharm Community Edition**, an IDE for Python development.

- [install_telegram.sh](https://github.com/cl7paBka/kali-linux-scripts/blob/main/install_telegram.sh)  
  Installs the **Telegram** desktop client.

- [install_yandex_music.sh](https://github.com/cl7paBka/kali-linux-scripts/blob/main/install_yandex_music.sh)  
  Installs the **Yandex Music** desktop application.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/cl7paBka/kali-linux-scripts.git
   cd kali-linux-scripts
   ```

2. **(Optional) Make the scripts executable**:
   ```bash
   chmod +x install_*.sh
   ```

3. **Run the script of your choice** (example for Nekobox):
   ```bash
   sudo -E ./install_nekobox.sh
   ```
   > **Why `-E`?** The `-E` flag preserves the current user's environment variables (like `$HOME`) when using sudo. This ensures the script uses your regular user's home directory (`/home/your-username`) instead of the root user's (`/root`).

Repeat the above command (changing the script name) for any application you wish to install, always using `sudo -E` to keep your environment consistent.

## Contributing

Contributions are welcome! Feel free to open an [issue](https://github.com/cl7paBka/kali-linux-scripts/issues) if you encounter a problem or have a suggestion. You can also submit a pull request with your proposed changes.
