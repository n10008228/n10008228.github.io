#!/bin/bash
# Unit Converter — CPAN133 team project
# Matheus Maggiorini (n10008228) & Andre

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# shellcheck source=lib/common.sh
source "$SCRIPT_DIR/lib/common.sh"
# shellcheck source=lib/length.sh
source "$SCRIPT_DIR/lib/length.sh"
# shellcheck source=lib/weight.sh
source "$SCRIPT_DIR/lib/weight.sh"
# shellcheck source=lib/temperature.sh
source "$SCRIPT_DIR/lib/temperature.sh"

main_menu() {
  while true; do
    print_header
    echo ""
    echo "  1) Length"
    echo "  2) Weight"
    echo "  3) Temperature"
    echo "  0) Exit"
    echo ""
    read -r -p "Choose a category: " category

    case "$category" in
      1) length_conversions ;;
      2) weight_conversions ;;
      3) temperature_conversions ;;
      0)
        echo "Goodbye."
        exit 0
        ;;
      *)
        echo "Invalid option."
        ;;
    esac
  done
}

if ! command -v bc >/dev/null 2>&1; then
  echo "Error: bc is required. Install it or run on the Humber Linux lab (apollo)."
  exit 1
fi

main_menu
