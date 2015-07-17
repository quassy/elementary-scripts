#!/bin/bash
mkdir ~/git/freya-snippets/backup/
cp /etc/apt/sources.list ~/git/freya-snippets/backup/enable-alpha_sources.list
sudo apt-add-repository ppa:elementary-os/staging
sudo apt-get update
