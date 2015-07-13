#!/bin/bash
mkdir ~/git/freya-snippets/backup/
cp /etc/apt/sources.list ~/git/freya-snippets/backup/install-multiverse_sources.list
sudo apt-add-repository multiverse && sudo apt-get update
sudo apt-get install ubuntu-restricted-extras