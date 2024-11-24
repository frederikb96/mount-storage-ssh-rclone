# Mount Storage Automation

This project automates the process of mounting storage via SSH and performing additional checks to ensure that mounts are available and SSH connectivity is stable. It uses `rclone` and `bindfs` for managing the mounts and provides systemd services for automating the startup and monitoring of the mounts.


## Filling out Configuration

Before you start the installation, you must configure the variables in the `group_vars/all.yml` file. This file contains essential settings for the mounts, users, and systemd services.

- **SSH Details**: Update `sftp_host`, `sftp_user`, `sftp_port`, and `hetzner_crypt_password` with your specific credentials for mounting the SFTP.
- **Mount Points**: Define your main `mount_point` and subdirectories in the `subs` section for proper bind mounting.
- **Email Setup**: Set up the email recipient (`sendmail_recipient`) and the device name (`sendmail_device`) to get notifications if something fails.

## Quickstart

1. Install the required Ansible role:
   ```
   ansible-galaxy install stefangweichinger.ansible_rclone
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
- Installs the required packages, `rclone` and `bindfs`.
- Copies the mount and check scripts to the designated script directory.
- Configures and enables the `mount-storage` systemd service, which ensures the mounts are properly handled on startup.

## Uninstallation

The uninstallation process will:
- Stop and disable the `mount-storage` systemd service.
- Remove the mount and check scripts.
- Remove the rclone configuration and other related files.

This provides a clean removal of the automated mount storage setup.