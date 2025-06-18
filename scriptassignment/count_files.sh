#!/bin/bash

# Check if directory path argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_directory>"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
    echo "'$1' is not a valid directory."
    exit 1
fi

# Count and print number of files (trim whitespace)
file_count=$(find "$1" -type f | wc -l | xargs)
echo "There are $file_count files in '$1'."
