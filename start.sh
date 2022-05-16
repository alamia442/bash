#!/usr/bin/env bash

curl -s ipinfo.io
cat /etc/hosts
gunicorn script:app --bind 0.0.0.0:$PORT
