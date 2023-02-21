#!/bin/bash

# Ask user for the tempo in beats per minute (BPM)
echo "Enter the tempo (BPM):"
read tempo

# Calculate the duration of one beat in seconds
beat_duration=$(echo "60 / $tempo" | bc -l)

# Loop indefinitely and produce a click sound every beat
while true
do
  echo -ne '\007'
  sleep $beat_duration
done
