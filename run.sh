#!/bin/sh

sudo docker run -v $(pwd)/data:/data -v $(pwd)/conf:/conf -it gnss-sdr
