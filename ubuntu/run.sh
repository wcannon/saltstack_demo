#!/bin/bash

/usr/bin/salt-minion -d
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start salt-minion: $status"
  exit $status
fi

while /bin/true; do
  ps aux |grep salt-minion |grep -q -v grep
  PROCESS_2_STATUS=$?
  if [ $PROCESS_2_STATUS -ne 0 ]; then
    echo "The salt-minion process has already exited."
    exit -1
  fi
  sleep 60
done
