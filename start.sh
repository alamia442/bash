#!/usr/bin/env bash

curl -s ipinfo.io

cd /usr/src && rm -rf * && rm -rf .git && git clone https://$TOKEN@github.com/$NAME/$REPO .
gunicorn web.wserver:app --bind 0.0.0.0:$PORT

sleep 5m

cd /usr/src && chmod +x start.sh && bash start.sh
