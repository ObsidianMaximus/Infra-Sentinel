#!/bin/bash
sudo apt update -y
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo usermod -aG docker ubuntu