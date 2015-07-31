#!/bin/bash
mkdir ~/git/elementary-scripts/backup/
cp /etc/apt/sources.list ~/git/elementary-scripts/backup/enable-beta_sources.list
sudo apt-add-repository ppa:elementary-os/daily
sudo apt-get update
