#!/bin/bash
sleep 30
sudo apt update
sudo apt install nginx -y
sudo systemctl enable --now nginx
