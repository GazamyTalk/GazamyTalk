#!/bin/bash

cp /usr/nginx/nginx.conf /etc/nginx/nginx.conf
if [ -n "$DOMAIN_NAME" ]; then
    sed -i "s@``DOMAIN_NAME``@${DOMAIN_NAME}@g" /etc/nginx/nginx.conf;
    nginx;
    exit 0;
else
    echo "Require DOMAIN_NAME environment variable" > /dev/stderr;
    exit 2;
fi