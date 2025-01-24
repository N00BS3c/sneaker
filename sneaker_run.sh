#!/bin/bash

directories=(
    "/etc/systemd/system/"
    "/usr/lib/systemd/system/"
    "/lib/systemd/system/"
    "/etc/init.d/"
)

for dir in "${directories[@]}"; do
    if [ -d "$dir" ]; then
        find "$dir" -type f -name "*.service" -o -name "*" | while read -r file; do
            grep -E "#.*(root|password|passwd|secret|key)" "$file" 2>/dev/null && echo "[!] Potential credential in $file"
        done
    fi
done
