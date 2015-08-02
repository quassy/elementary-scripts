#!/bin/bash
sudo apt-get install html2text build-essential cmake valac libgirepository1.0-dev libgtk-3-dev libsoup2.4-dev libjson-glib-dev libwebkit2gtk-3.0-dev libsqlite3-dev libsecret-1-dev libnotify-dev libxml2 rest-0.7

mkdir ~/bzr/
cd ~/bzr/
bzr branch lp:feedreader
# bzr merge?
mkdir feedreader/build
cd feedreader/build
cmake -DWITH_LIBUNITY=OFF -DCMAKE_INSTALL_PREFIX=/usr ..
make
sudo checkinstall --pkgversion=999-bzr
feedreader
