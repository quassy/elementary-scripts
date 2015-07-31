#!/bin/bash
echo "This will restart your system, press Ctrl+C to abort."
cd ~/Downloads/
if [ ! -f ./vbox-guest.iso ]; then
  wget -O ./vbox-guest.iso "http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso"
else
  echo "Using existing iso file. To download again delete ~/Downloads/vbox-guest.iso and rerun this script."
fi
echo "8d9f1d600ff65d1230b9b4e386f2ad48 vbox-guest.iso" > ./vbox-guest.iso.md5
if [ ! "$(md5sum -c ~/Downloads/vbox-guest.iso.md5)" ]; then 
  echo "Could not verify iso file. To download again delete ~/Downloads/vbox-guest.iso and rerun this script."
  exit 1
fi
sudo mkdir /media/vbox-guest
sudo mount -o loop ./vbox-guest.iso /media/vbox-guest
cd /media/vbox-guest
if [ "$(sudo sh ./VBoxLinuxAdditions.run)" ]; then
  sudo umount /media/vbox-guest
  sudo rmdir /media/vbox-guest
fi
sudo shutdown -r 15s
echo "FYI: To uninstall VirtualBox Guest Additions run /opt/VBoxGuestAdditions-5.0.0/uninstall.sh"
