#!/usr/bin/env bash

curl -s ipinfo.io

gunicorn app:app
