#!/usr/bin/env bash

curl -s ipinfo.io

sleep 45

cd /usr/src && rm -rf * && rm -rf .git && git clone https://$TOKEN@github.com/$NAME/$REPO .
gunicorn web.wserver:app --bind 0.0.0.0:$PORT --daemon

secs=$((5 * 60))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done

cd /usr/src && chmod +x start.sh && bash start.sh
