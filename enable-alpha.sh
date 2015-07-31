#!/bin/bash
mkdir ~/git/elementary-scripts/.backup/
cp /etc/apt/sources.list ~/git/elementary-scripts/backup/enable-alpha_sources.list
sudo apt-add-repository ppa:elementary-os/staging
sudo apt-get update
