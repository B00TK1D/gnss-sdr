#!/bin/sh

sudo docker run --name gnss-sdr -p 1501:1501/udp -p 1502:1502 gnss-sdr
