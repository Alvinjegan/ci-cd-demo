#!/bin/bash
set -e

echo ">>> Stopping existing Nginx service if running..."
if systemctl is-active --quiet nginx; then
  sudo systemctl stop nginx
fi

echo ">>> Cleaning up old app files..."
sudo rm -rf /usr/share/nginx/html/*
