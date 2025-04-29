#!/bin/bash

mkdir -p "$2"

find "$1" -type f -print0  | while IFS=  read -r -d '' file; do
  cp "$file" "${2}"
done
