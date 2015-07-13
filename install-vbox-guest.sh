cd ~/Downloads/
if [ ! -a ./vbox-guest.iso ]; then
  wget -O ./vbox-guest.iso "http://download.virtualbox.org/virtualbox/5.0.0/VBoxGuestAdditions_5.0.0.iso"
fi
echo "8d9f1d600ff65d1230b9b4e386f2ad48 vbox-guest.iso" > ./vbox-guest.iso.md5
if [ ! "$(md5sum -c ~/Downloads/vbox-guest.iso.md5)" ]; then 
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