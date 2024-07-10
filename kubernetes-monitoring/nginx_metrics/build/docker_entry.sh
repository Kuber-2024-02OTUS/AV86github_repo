#!/bin/bash
echo 123!!!
sed -i "s/###HOST###/${HOSTNAME}/g" index.html
nginx -g 'daemon off;'