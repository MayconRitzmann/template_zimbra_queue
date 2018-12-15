#!/bin/bash

# Set Path
path=$1

# Set queue
queue=$2

if [ -z $path ] || [ -z $queue ]
then
  echo "Pass any value for path and queue"
else
  # Find queue by parameter
  /opt/zimbra/common/sbin/postqueue -p | find $path/$queue/ -type f | wc -l
fi
