#!/bin/bash

nohup flume-ng agent -c /home/cloudera/Documents/twitter_project/flume \
                     -C /home/cloudera/workspace/cdh-twitter-example/flume-sources/target/* \
                     -f flume_twitter.conf \
                     -Dflume.root.logger=DEBUG,console \
                     -Dflume.monitoring.type=ganglia \
                     -Dflume.monitoring.hosts=localhost:8649\
                     -n TwitterAgent & 


