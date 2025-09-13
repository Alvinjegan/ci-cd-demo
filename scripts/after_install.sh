#!/bin/bash
set -e

echo ">>> Setting permissions..."
sudo chown -R ec2-user:ec2-user /usr/share/nginx/html
sudo chmod -R 755 /usr/share/nginx/html

echo ">>> Installing dependencies..."
# Amazon Linux 2 uses yum, Amazon Linux 2023 uses dnf, yum still works as a symlink
sudo yum install -y nginx
