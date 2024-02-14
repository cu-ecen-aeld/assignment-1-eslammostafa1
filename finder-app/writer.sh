#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error: Please provide two arguments: writer-file and write-str"
    exit 1
fi

writefile="$1"
writestr="$2"
writedir=$(dirname "$writefile")

# Create the directory if it doesn't exist
if [ ! -d "$writedir" ]; then
    echo "Creating directory: $writedir"
    mkdir -p "$writedir" || { echo "Error: Unable to create directory $writedir"; exit 1; }
fi

# Create or overwrite the file with the given content
echo "$writestr" > "$writefile" || { echo "Error: Unable to write to file $writefile"; exit 1; }

echo "File created or updated: $writefile"
