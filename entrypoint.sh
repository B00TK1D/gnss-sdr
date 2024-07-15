#!/bin/sh

mkdir /data
rm /data/gnss.fifo
mkfifo /data/gnss.fifo
gnss-sdr --config-file=/conf/udp.conf 2>&1 | grep PSIG_DUMP | nc -kl 1502 &
recvpipe
