#!/bin/bash

for file in $(ls *.jpg | grep -v new); do
    ./whiteboard.sh $file > ${file%.jpg}-new.jpg
    rm $file
done
