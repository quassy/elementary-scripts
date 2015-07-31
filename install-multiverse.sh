#!/bin/bash
mkdir ~/git/elementary-scripts/backup/
cp /etc/apt/sources.list ~/git/elementary-scripts/backup/install-multiverse_sources.list
sudo apt-add-repository multiverse && sudo apt-get update
sudo apt-get install ubuntu-restricted-extras
