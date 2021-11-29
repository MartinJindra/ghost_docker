#!/bin/bash
node current/index.js &
/usr/sbin/sshd -D
