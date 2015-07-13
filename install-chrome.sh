#!/bin/bash
echo "This does not work"
echo "This will only work on 64bit systems"
cd ~/Downloads/
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O ~/Downloads/chrome-amd64.deb
sudo dpkg --install ~/Downloads/chrome-amd64.deb
atom