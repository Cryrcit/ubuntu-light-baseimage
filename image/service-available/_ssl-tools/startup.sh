#!/bin/sh -e
log-helper level eq trace && set -x

chmod 700 "${CONTAINER_SERVICE_DIR}"/_ssl-tools/assets/tool/*
ln -sf "${CONTAINER_SERVICE_DIR}"/_ssl-tools/assets/tool/* /usr/sbin
