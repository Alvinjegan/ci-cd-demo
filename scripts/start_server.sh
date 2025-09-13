#!/bin/bash
set -e

echo ">>> Starting Nginx service..."
sudo systemctl enable nginx
sudo systemctl start nginx
