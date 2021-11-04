#!/bin/sh

echo "Starting pigpiod"
pigpiod
cd /
echo "Starting fan.py"
python3 fan.py&

until false; do
  echo "debug message"
  sleep 30
done
