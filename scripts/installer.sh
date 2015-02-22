#!/bin/bash

vnstat -u -i eth0
vnstat -u -i tun443
vnstati -vs -i tun443 -o  /usr/share/nginx/html/stats/tun443.png
vnstati -vs -i eth0 -o /usr/share/nginx/html/stats/eth0.png
