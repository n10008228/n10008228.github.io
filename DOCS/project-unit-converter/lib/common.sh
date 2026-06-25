#!/bin/bash
# Shared helpers — used by all conversion modules

read_value() {
  local prompt=$1
  local value
  while true; do
    printf "%s: " "$prompt" >&2
    read -r value
    if [[ "$value" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
      echo "$value"
      return
    fi
    echo "Please enter a valid number." >&2
  done
}

convert() {
  local expression=$1
  bc -l <<< "scale=6; $expression"
}

show_result() {
  local from_unit=$1
  local to_unit=$2
  local input=$3
  local output=$4
  echo ""
  printf "%s %s = %s %s\n" "$input" "$from_unit" "$output" "$to_unit"
}

print_header() {
  echo ""
  echo "========================================"
  echo "       Unit Conversion Calculator"
  echo "========================================"
}
