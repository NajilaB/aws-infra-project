#!/bin/bash
sudo dnf update -y
sudo dnf install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo mkdir -p /usr/share/nginx/html
echo "Hello from Terraform" | sudo tee /usr/share/nginx/html/index.html