#!/bin/bash
# Creates a new post in the Jekyll format.

read -p "Post title? " -e T

TITLE=$(echo "$T" | sed -E "s/[[:space:]]+/-/g")

DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M:%S)

FILE=_drafts/$DATE-$TITLE.md

cat > $FILE << EOF
---
layout: post
title: $TITLE
time: $TIME
---
EOF

vim $FILE
