# kali-linux-scripts Repository

This repository contains scripts and configurations to simplify setting up and customizing Kali Linux. Whether you're a beginner or an advanced user, these tools will help you streamline your workflow.

---

## Getting Started

### 1. Install Git (if not already installed)
Git is required to clone this repository. If you don’t have Git installed, follow these steps:

1. Open a terminal.
2. Run the following command to install Git:
   ```bash
   sudo apt update
   sudo apt install git
   ```
3. Verify the installation:
   ```bash
    git --version
   ```
### 2. Install wget (if not already installed)
Some scripts in this repository use wget to download files. To install wget:
1. Open a terminal.
2. Run the following command:
   ```bash
   sudo apt update
   sudo apt install wget
   ```
3. Verify the installation:
   ```bash
   wget --version
   ```
### 3. Clone the Repository
To download the scripts to your local machine:

1. Open a terminal.
2. Run the following command:
   ```bash
   git clone https://github.com/cl7paBka/kali-linux-scripts.git
   ```
3. Navigate to the repository folder:
   ```bash
   cd kali-linux-scripts
   ```

## Using the `install_nekobox.sh` Script  

The `install_nekobox.sh` script automates the installation of NekoBox on Kali Linux. Follow these steps:  

### 1. Make the Script Executable  
Before running the script, ensure it has execute permissions:  
1. Open a terminal.  
2. Navigate to the repository folder (if not already there):  
   ```bash  
   cd kali-linux-scripts  
   ```
3. Run:
   ```
   chmod +x install_nekobox.sh
   ```
   
### 2. Run the Script  
Execute the script with `sudo` to install NekoBox:  
   ```bash  
   sudo -E ./install_nekobox.sh  
   ```

#### Why -E?
The -E flag preserves the current user's environment variables (like $HOME) when using sudo. This ensures the script uses your regular user's home directory (/home/your-username) instead of the root user's (/root).