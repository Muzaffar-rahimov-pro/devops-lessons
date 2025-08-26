#!/bin/bash

while true
do
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
  echo "[$TIMESTAMP] - Writing timestamp to MySQL"

  # MySQL konteyneriga yozish
  mysql -hmysql -uroot -proot123 myappdb -e "INSERT INTO timestamps (created_at) VALUES ('$TIMESTAMP');"

  sleep 5
done

