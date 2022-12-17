#!/bin/bash

echo "start server"
redis-server /etc/redis/redis.conf

while true; do
  echo "check ...."
  sleep 300
done