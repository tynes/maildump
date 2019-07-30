#!/bin/bash

ZIP_DIR=archives

mkdir -p "$ZIP_DIR"

rows=$(wget -q -O - "$1" | grep "Gzip'd")

for row in $rows; do
    if [[ "$row" =~ "href" ]]; then
        file=$(echo "$row" | sed -e 's/href="\(.*\)"\>\[/\1/')
        echo "fetching $file..."
        wget -q -O - "$1/$file" > "$ZIP_DIR/$file"
    fi
done

