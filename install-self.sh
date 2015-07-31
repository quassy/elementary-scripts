#!/bin/bash
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install git
mkdir ~/git/
git clone git@github.com:quassy/elementary-scripts.git elementary-scripts
