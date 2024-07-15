#!/bin/sh

rm /data/gnss.fifo
mkfifo /data/gnss.fifo
gnss-sdr --config-file=/conf/file.conf &
recvpipe
