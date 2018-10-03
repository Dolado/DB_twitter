#!/bin/bash


/usr/bin/spark-submit --deploy-mode cluster \
                      --master spark://127.0.0.1:18080 \
                      --class twitterProject.TwitterJsonParser  /home/cloudera/workspace/twitterProject/target/twitterProject-0.0.1-SNAPSHOT.jar

exit $?
