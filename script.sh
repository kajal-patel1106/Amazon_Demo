#!/bin/bash

# Update system
sudo yum update -y

# Install Apache (httpd)
sudo yum install httpd -y

# Start Apache server
sudo systemctl start httpd

# Enable Apache on boot
sudo systemctl enable httpd

# Remove default web page
sudo rm -rf /var/www/html/*

# Copy index.html to web server directory
sudo cp index.html /var/www/html/

# Set permissions
sudo chmod 644 /var/www/html/index.html

# Restart Apache
sudo systemctl restart httpd

echo "Deployment completed!"