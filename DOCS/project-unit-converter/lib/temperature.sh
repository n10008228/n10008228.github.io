#!/bin/bash
# Temperature conversions — Andre (andre-branch)

print_temperature_menu() {
  echo ""
  echo "--- Temperature ---"
  echo "  1) Fahrenheit     -> Celsius"
  echo "  2) Celsius        -> Fahrenheit"
  echo "  3) Celsius        -> Kelvin"
  echo "  4) Kelvin         -> Celsius"
  echo "  0) Back"
}

temperature_conversions() {
  while true; do
    print_temperature_menu
    read -r -p "Choose a temperature conversion: " choice
    case "$choice" in
      0) return ;;
      1)
        input=$(read_value "Enter Fahrenheit")
        output=$(convert "($input - 32) * 5 / 9")
        show_result "F" "C" "$input" "$output"
        ;;
      2)
        input=$(read_value "Enter Celsius")
        output=$(convert "($input * 9 / 5) + 32")
        show_result "C" "F" "$input" "$output"
        ;;
      3)
        input=$(read_value "Enter Celsius")
        output=$(convert "$input + 273.15")
        show_result "C" "K" "$input" "$output"
        ;;
      4)
        input=$(read_value "Enter Kelvin")
        output=$(convert "$input - 273.15")
        show_result "K" "C" "$input" "$output"
        ;;
      *)
        echo "Invalid option."
        ;;
    esac
  done
}
