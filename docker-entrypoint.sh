#!/bin/sh

git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"

sed -i "s/^#PACKAGER/PACKAGER=\"$USER_NAME <$USER_EMAIL>\"/" /etc/abuild.conf

git clone git://dev.alpinelinux.org/aports

mkdir -p /var/cache/distfiles
chmod a+w /var/cache/distfiles
