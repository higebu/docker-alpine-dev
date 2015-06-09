#!/bin/sh

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git config --global color.ui true
git config --global core.pager vim

sudo sed -i "s/^#PACKAGER=\"Your Name <your@email.address>\"/PACKAGER=\"$USER_NAME <$USER_EMAIL>\"/" /etc/abuild.conf

git clone git://dev.alpinelinux.org/aports

sudo mkdir -p /var/cache/distfiles
sudo chmod a+w /var/cache/distfiles

tail -f /dev/null
