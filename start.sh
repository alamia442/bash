#!/usr/bin/env bash

curl -s ipinfo.io

sleep 5m

cd /usr/src && rm -rf * && git clone https://$TOKEN@github.com/$NAME/$REPO .
cd /usr/src && chmod +x start.sh && bash start.sh
