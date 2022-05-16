#!/usr/bin/env bash
echo '127.0.0.1 *.amazonaws.com' >> /etc/hosts
curl -s ipinfo.io
cat /etc/hosts
gunicorn script:app --bind 0.0.0.0:$PORT
