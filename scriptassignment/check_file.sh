#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 sample_file.txt"
    exit 1
fi

# Check if the file exists
if [ -f "$1" ]; then
    echo "File '$1' exists."
else
    echo "File '$1' does not exist."
fi
