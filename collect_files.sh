#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: collect_files.sh input_directory output_directory"
  exit 1
fi

mkdir -p "$2"

find "$1" -type f -print0  | while IFS=  read -r -d '' file; do
  cp "$file" "$2"
done

