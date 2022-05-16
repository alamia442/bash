#!/usr/bin/env bash

curl -s ipinfo.io
ls -lah

sleep 45

cd /usr/src && rm -rf * && git clone https://$TOKEN@github.com/$NAME/$REPO .
cd /usr/src && chmod +x start.sh && bash start.sh
