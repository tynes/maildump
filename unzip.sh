#!/bin/bash

ZIP_DIR=archives
RAW_DIR=raw

mkdir -p "$RAW_DIR"

for path in $ZIP_DIR/*.gz; do
    dir="$(echo "$path" | cut -d '/' -f 1)"
    file="$(echo "$path" | cut -d '/' -f 2)"

    echo "unzipping $file..."

    gunzip -c "$PWD/$dir/$file" \
        >> "$RAW_DIR/$(echo "$file" | cut -d '.' -f 1).txt"
done
