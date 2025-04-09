#!/bin/bash

for file in files/*; do
        first_letter=$(basename "$file" | cut -c1 | tr 'A-Z' 'a-z')

        if [[ "$first_letter" =~ [a-z] ]]; then
                mv "$file" "$first_letter/"
        fi
done