sudo touch /usr/share/contractor/openasroot.contract
sudo echo "[Contractor Entry]
Name=Open folder as root
Icon=gksu-root-terminal
Description=Open folder as root
MimeType=inode;application/x-sh;application/x-executable;
Exec=pkexec pantheon-files -d %U
Gettext-Domain=pantheon-files" > /usr/share/contractor/openasroot.contract