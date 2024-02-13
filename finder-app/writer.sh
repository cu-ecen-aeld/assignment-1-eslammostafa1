#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Please provide two arguments: writer-file and write-str"
    exit 1
fi

writefile=$1
writestr=$2

if [ ! -f "$writefile" ]; then
    echo "Error: $writefile is not a exist. creating file ..."
    touch "$writefile"
fi

if [ -s "$writefile" ]; then
    echo "File is not empty, will take a new content "
else
    echo "File is empty or does not exist"
fi

echo "$writestr" > "$writefile"
