# Mount Storage Automation

This project automates the process of mounting storage via SSH and performing additional checks to ensure that mounts are available and SSH connectivity is stable. It uses `rclone` and `bindfs` for managing the mounts and provides systemd services for automating the startup and monitoring of the mounts.

## Quickstart

1. Clone the repository to your local machine:
   ```
   git clone <repository_url>
   ```
   
2. Run the Ansible playbook to install the necessary components:
   ```
   ansible-playbook install.yml
   ```

3. To uninstall the components:
   ```
   ansible-playbook uninstall.yml
   ```

## Installation

During the installation process, the following actions are performed:
- Creates necessary users with no password and home directories.
- Sets up SSH configuration for each user by creating `.ssh/authorized_keys` files.
- Installs the required packages, `rclone` and `bindfs`.
- Copies the mount and check scripts to the designated script directory.
- Configures and enables the `mount-storage` systemd service, which ensures the mounts are properly handled on startup.

## Uninstallation

The uninstallation process will:
- Stop and disable the `mount-storage` systemd service.
- Remove the mount and check scripts.
- Remove the created users and their home directories.
- Remove the rclone configuration and other related files.

This provides a clean removal of the automated mount storage setup.