#!/bin/bash

PORT=80
DOCROOT="/var/www/html"
URL="http://127.0.0.1:${PORT}/"
if [ ! -f "${DOCROOT}/index.html" ]; then
    exit 1
fi
curl -fs --max-time 2 "$URL" > /dev/null 2>&1
if [ $? -ne 0 ]; then
    exit 1
fi
exit 0
