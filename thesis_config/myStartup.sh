#!/bin/bash
sleep 20
cd ~/RTKThesis/thesis_config
screen -d -m ./rtkrcv2 -s -o rtkLogging.conf
