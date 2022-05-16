#!/bin/bash

sleep-with-countdown() {
  secs=$1
  while [ $secs -gt 0 ]; do
    printf "\rsleep: $secs\033[0K"
    sleep 1
    : $((secs--))
  done
  printf "\n"
}

curl -s ipinfo.io

echo "Waiting for clone repo and run gunicorn"

sleep 45

cd /usr/src && rm -rf * && rm -rf .git && git clone https://$TOKEN@github.com/$NAME/$REPO .
gunicorn web.wserver:app --bind 0.0.0.0:$PORT --daemon &

sleep-with-countdown(5)

cd /usr/src && chmod +x start.sh && bash start.sh
