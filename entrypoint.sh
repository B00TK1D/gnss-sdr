#!/bin/sh

mkdir /data
rm /data/gnss.fifo
mkfifo /data/gnss.fifo
gnss-sdr --config-file=/conf/udp.conf 2>&1 | grep -oE 'PSIG_DUMP: PRN=\d+ PSig=[0-9\.]+' | nc -kl 1502 &
# PSIG_DUMP: PRN=14 PSig=474.226
recvpipe
