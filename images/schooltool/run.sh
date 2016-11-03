#!/bin/sh

echo "87.98.254.109 ftp.schooltool.org" >> /etc/hosts
usermod -u $UID schooltool
groupmod -g $UID schooltool

/usr/sbin/sshd -D