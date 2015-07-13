#!/bin/bash
mkdir ~/git/freya-snippets/backup/
cp /etc/apt/sources.list ~/git/freya-snippets/backup/enable-beta_sources.list
sudo apt-add-repository ppa:elementary-os/daily && sudo apt-get update