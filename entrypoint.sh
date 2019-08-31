#!/bin/bash

if [ -z "$BORGPASSWD" ]; then
  echo "$BORGPASSWD env not set." >&2
  exit 1
fi

echo "borg:${BORGPASSWD}" | chpasswd


/usr/sbin/sshd -D
