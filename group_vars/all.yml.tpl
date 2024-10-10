---
# Variables for Mount Storage Automation

# Main script and service configuration
script_dir: "/opt/mount-storage"
script_storage: "mount-storage.sh"
script_check: "mount-check.sh"
systemd_dir: "/etc/systemd/system"
storage_service_name: "mount-storage.service"
rclone_config: "/root/.config/rclone/rclone.conf"

# Users to be created (without password) and their home directories
user_subs:
  - "bak-framework"

# Configuration for SSH and mounts
sftp_host: "your-storagebox-host"   # Update with your SFTP host
sftp_user: "your-sftp-user"         # Update with your SFTP user
sftp_port: "your-sftp-port"         # Update with your SFTP port (default 22 or 23)
mount_sftp: "your-sftp-mount"       # Name for your SFTP mount
mount_crypt: "your-crypt-mount"     # Name for your encrypted mount
hetzner_crypt_password: "your-password"  # Update with your crypt password
mount_point: "/mnt/storage-main"    # Main mount point
cache_dir: "/mnt/cache-rclone"      # Cache directory for rclone

# Subdirectories to be mounted and their associated users
mount_subs: "/mnt/storage"
subs:
  - sub: "immich"
    user: "root"
  - sub: "plex"
    user: "root"
  - sub: "nextcloud"
    user: "www-data"
  - sub: "bak-framework"
    user: "bak-framework"

# Email notifications configuration
sendmail_recipient: "your-email@example.com"  # Update with your email
sendmail_device: "your-device-name"           # Name of the device (e.g., server name)
