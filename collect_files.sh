#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Неккоректное количество аргументов"
  exit 1
fi

input_dir="$1"
output_dir="$2"

mkdir -p "$output_dir"

find "$input_dir" -type f -print0  | while IFS=  read -r -d '' file; do
  cp "$file" "$output_dir"
done

