#!/bin/bash

# Start the first process
/usr/bin/salt-master -d
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start salt-master: $status"
  exit $status
fi

while /bin/true; do
  ps aux |grep salt-master |grep -q -v grep
  PROCESS_1_STATUS=$?
  if [ $PROCESS_1_STATUS -ne 0 ]; then
    echo "The salt-master process has already exited."
    exit -1
  fi
  sleep 60
done
