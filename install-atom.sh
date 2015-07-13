#!/bin/bash
echo "This will only work on 64bit systems"
cd ~/Downloads/
wget https://github.com/atom/atom/releases/download/v1.0.2/atom-amd64.deb -O ~/Downloads/atom-amd64.deb
sudo dpkg --install ~/Downloads/atom-amd64.deb
atom