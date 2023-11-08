#!/bin/bash
HTML_PATH='/usr/share/nginx/html/index.html'
ADDR='192.168.1.12'
PORT=80

if [ ! -f "$HTML_PATH" ]; then
	exit 1
fi

nc -z $ADDR $PORT
res=$?

if [ $res -ne 0 ]; then
	exit 1
fi

exit 0
