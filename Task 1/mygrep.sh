#!/bin/bash

numbers=0
invert=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    -n)
      numbers=1
      shift
      ;;
    -v)
      invert=1
      shift
      ;;
    -vn | -nv)
      numbers=1
      invert=1
      shift
      ;;
    --help | -h)
      cat help.txt
      exit 1
      ;;
    -*)
      echo "Unknown option: $1"
      exit 1
      ;;
    *)
      break
      ;;
  esac
done

if [[ $# -lt 2 ]]; then
  echo "Error: Missing search string and/or file."
  exit 1
fi

pattern="$1"
file="$2"

if [[ ! -f "$file" ]]; then
  echo "Error: File '$file' not found."
  exit 1
fi

awk_script='
  BEGIN { IGNORECASE=1 }
'
if [[ $invert -eq 1 && $numbers -eq 1 ]]; then
  awk_script+='!($0 ~ pat) { print NR ":" $0 }'
elif [[ $invert -eq 1 ]]; then
  awk_script+='!($0 ~ pat) { print $0 }'
elif [[ $numbers -eq 1 ]]; then
  awk_script+='($0 ~ pat) { print NR ":" $0 }'
else
  awk_script+='($0 ~ pat) { print $0 }'
fi

awk -v pat="$pattern" "$awk_script" "$file"