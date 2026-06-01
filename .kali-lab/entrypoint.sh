#!/bin/bash
# Dump variables into an environment file for post-boot systemd execution
echo "ROOT_PASSWORD=${ROOT_PASSWORD}" > /etc/lab-environment
echo "TAILSCALE_AUTHKEY=${TAILSCALE_AUTHKEY}" >> /etc/lab-environment

# Execute systemd as PID 1
exec /lib/systemd/systemd
