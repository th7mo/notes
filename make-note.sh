#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: No title provided."
  exit 1
fi

title="$1"

# Create a sanitized filename by removing non-alphabetic characters and converting to kabab case
filename=$(echo "$title" | sed 's/[^a-zA-Z ]//g' | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g').md

if [ -f "$filename" ]; then
  echo "Error: File '$filename' already exists. Cannot overwrite."
  exit 1
fi

current_date=$(date +"%d-%m-%Y")

cat <<EOF > "$filename"
---
title: "$title"
description: ""
isPublic: true
dateCreated: "$current_date"
dateLastModified: "$current_date"
---
EOF

echo "Markdown file '$filename' created successfully."
