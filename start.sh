#!/usr/bin/env bash

curl -s ipinfo.io

gunicorn script:app --bind 0.0.0.0:$PORT
