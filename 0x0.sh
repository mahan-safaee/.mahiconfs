#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <file>"
  exit 1
fi

FILE="$1"

curl -F "file=@$FILE" https://0x0.st