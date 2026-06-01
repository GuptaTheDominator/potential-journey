#!/bin/bash

# 1. Set root password dynamically from captured environment
if [ -n "$ROOT_PASSWORD" ]; then
    echo "root:$ROOT_PASSWORD" | chpasswd
else
    echo "root:kali" | chpasswd
fi

# 2. Authenticate Tailscale node dynamically
if [ -n "$TAILSCALE_AUTHKEY" ]; then
    tailscale up --authkey="${TAILSCALE_AUTHKEY}" --accept-routes
fi

# 3. Provision Desktop auto-save trigger directory
mkdir -p /root/Desktop
