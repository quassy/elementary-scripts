#!/bin/bash
# http://elementaryos.stackexchange.com/questions/49/
sudo sh -c 'echo "[Contractor Entry]
Name=Open folder as root
Icon=pantheon-files
Description=Open folder as root
MimeType=inode;
Exec=pantheon-files-pkexec %U
Gettext-Domain=pantheon-files" > /usr/share/contractor/openasroot.contract'
sudo sh -c 'echo "#!/bin/sh
pkexec \"/usr/bin/pantheon-files\" \"\$\@"" > /usr/bin/pantheon-files-pkexec'