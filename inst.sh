#!/bin/bash
apt update
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
DEBIAN_FRONTEND=noninteractive apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils task-xfce-desktop -y -qq
dpkg -i google-chrome-stable_current_amd64.deb
apt install -f -y -qq
apt install tigervnc-standalone-server -y -qq
apt install xrdp -y -qq
rm google-chrome-stable_current_amd64.deb
adduser xrdp ssl-cert
pass=$(perl -e 'print crypt($ARGV[0], "password")' 12345Qq)
useradd -m -p "$pass" test
systemctl stop xrdp
wget https://raw.githubusercontent.com/DrDeepDreamer/DebianGUI/master/xrdp.ini
mv xrdp.ini /etc/xrdp/
systemctl start xrdp
