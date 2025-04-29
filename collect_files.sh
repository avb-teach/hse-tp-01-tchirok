#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <input_dir> <output_dir>"
  exit 1
fi

mkdir -p "$2"

find "$1" -type f -print0  | while IFS=  read -r -d '' file; do
  cp "$file" "$2"
done

