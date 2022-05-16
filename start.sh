#!/usr/bin/env bash

curl -s ipinfo.io

gunicorn app:app --bind 0.0.0.0:$PORT
