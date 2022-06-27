#!/bin/sh -e

rm -f /etc/ssh/sshd_config
#
mkdir /run/sshd
chmod 755 /run/sshd
