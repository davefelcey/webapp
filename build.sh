#!/bin/bash
docker build -t demoapp .
docker run -it --rm -p 8888:8080 demoapp
