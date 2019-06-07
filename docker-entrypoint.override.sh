#!/usr/bin/env bash
set -e

WRITABLE=/tmp/$RANDOM

if [[ $(touch ${WRITABLE}) ]]; then
    echo ">>> Error: Mount writable volume on '/tmp' for user:group '$(id -u):$(id -g)'."
    exit 1
fi

ls -l /tmp

exec /bin/sh /docker-entrypoint.sh "$@"
