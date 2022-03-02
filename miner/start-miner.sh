#!/bin/bash

WALLET_NAME=0x84F2EacA18bD21194B63d4555Dc3e889a1C83641

docker run -d \
--net host \
--name bminer \
--restart always \
--runtime nvidia \
harryhan1989/bminer:latest \
-api 0.0.0.0:3500 \
-max-temperature 80 \
-uri ethproxy://$WALLET_NAME@eu1.ethermine.org:4444

