#!/bin/bash
# Length conversions — Matheus Maggiorini

print_length_menu() {
  echo ""
  echo "--- Length ---"
  echo "  1) Centimeters  -> Meters"
  echo "  2) Meters         -> Centimeters"
  echo "  3) Inches         -> Centimeters"
  echo "  4) Feet           -> Meters"
  echo "  5) Kilometers     -> Miles"
  echo "  0) Back"
}

length_conversions() {
  while true; do
    print_length_menu
    read -r -p "Choose a length conversion: " choice
    case "$choice" in
      0) return ;;
      1)
        input=$(read_value "Enter centimeters")
        output=$(convert "$input / 100")
        show_result "cm" "m" "$input" "$output"
        ;;
      2)
        input=$(read_value "Enter meters")
        output=$(convert "$input * 100")
        show_result "m" "cm" "$input" "$output"
        ;;
      3)
        input=$(read_value "Enter inches")
        output=$(convert "$input * 2.54")
        show_result "in" "cm" "$input" "$output"
        ;;
      4)
        input=$(read_value "Enter feet")
        output=$(convert "$input * 0.3048")
        show_result "ft" "m" "$input" "$output"
        ;;
      5)
        input=$(read_value "Enter kilometers")
        output=$(convert "$input * 0.621371")
        show_result "km" "mi" "$input" "$output"
        ;;
      *)
        echo "Invalid option."
        ;;
    esac
  done
}
