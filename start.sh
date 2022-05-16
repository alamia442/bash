#!/bin/bash
set -e

curl -s ipinfo.io

cd /usr/src && rm -rf * && rm -rf .git && git clone https://$TOKEN@github.com/$NAME/$REPO .


secs=$((0.5 * 60))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done
gunicorn web.wserver:app --bind 0.0.0.0:$PORT &
