#!/bin/bash

set -ouex pipefail


TARGET_DIR="/usr/lib/firmware"
SOURCE_DIR="usr/lib/firmware"

echo "--- Starting Firmware Installation ---"

# 1. Create target directory if it doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    echo "Creating directory $TARGET_DIR..."
    mkdir -p "$TARGET_DIR"
fi

# 2. Copy the files mirroring the structure
echo "Copying firmware files to $TARGET_DIR..."
cp -rv "$SOURCE_DIR"/* "$TARGET_DIR"/

# 3. Check for .xz files and offer decompression
# Note: Most modern kernels (5.3+) load .xz files automatically.
read -p "Does your kernel require decompressed firmware? (y/N): " DECOMPRESS
if [[ "$DECOMPRESS" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Decompressing .xz files..."
    find "$TARGET_DIR" -name "*.xz" -exec xz -d {} +
fi

# 4. Set standard ownership and permissions
echo "Setting permissions..."
chown -R root:root "$TARGET_DIR"
chmod -R 644 "$TARGET_DIR"
find "$TARGET_DIR" -type d -exec chmod 755 {} +