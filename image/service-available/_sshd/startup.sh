#!/bin/sh -e
log-helper level eq trace && set -x
ln -sf "${CONTAINER_SERVICE_DIR}/_sshd/assets/sshd_config" /etc/ssh/sshd_config

chmod 444 -R "${CONTAINER_SERVICE_DIR}"/_sshd/assets/sshd_config
