#!/bin/sh

rm ./data/gnss.fifo
mkfifo ./data/gnss.fifo
nc -lu 1501 > ./data/gnss.fifo &

sudo docker run -v $(pwd)/data:/data -v $(pwd)/conf:/conf gnss-sdr gnss-sdr --config-file=/conf/udp.conf
