#!/bin/bash

mkdir -p "$2"

find "$1" -type f | while read -r file; do
  cp "$file" "${2}/"
done
