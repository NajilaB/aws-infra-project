#!/bin/bash
#sudo dnf update -y
#sudo dnf install -y nginx
#sudo systemctl start nginx
#sudo systemctl enable nginx
#sudo mkdir -p /usr/share/nginx/html
#echo "Hello from Terraform" | sudo tee /usr/share/nginx/html/index.html

set -euo pipefail

#system update and nginx install
sudo dnf update -y
sudo dnf install -y nginx

# start and enable nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# prepare web root
sudo mkdir -p /usr/share/nginx/html
cd /usr/share/nginx/html/

# Download and extract template to a temp directory
sudo wget https://www.tooplate.com/zip-templates/2158_forge_reality.zip

#extract
sudo unzip -q -o 2158_forge_reality.zip
sudo rm 2158_forge_reality.zip

sudo mv 2158_forge_reality/* . 
sudo rmdir 2158_forge_reality

#Fix ownership
sudo chown -R nginx:nginx /usr/share/nginx/html/

#validate and reload nginx
sudo nginx -t && sudo systemctl reload nginx
