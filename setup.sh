#!/bin/bash
# Automated setup script for ELK Stack

echo "Updating system packages..."
sudo apt update

echo "Installing Elasticsearch, Logstash, and Kibana..."
sudo apt install -y elasticsearch logstash kibana

echo "Starting and enabling services..."
sudo systemctl enable elasticsearch logstash kibana
sudo systemctl start elasticsearch logstash kibana

echo "ELK Stack setup completed successfully."
