#!/bin/bash
# Weight conversions — Matheus Maggiorini

print_weight_menu() {
  echo ""
  echo "--- Weight ---"
  echo "  1) Pounds         -> Kilograms"
  echo "  2) Kilograms      -> Pounds"
  echo "  3) Ounces         -> Grams"
  echo "  4) Grams          -> Ounces"
  echo "  0) Back"
}

weight_conversions() {
  while true; do
    print_weight_menu
    read -r -p "Choose a weight conversion: " choice
    case "$choice" in
      0) return ;;
      1)
        input=$(read_value "Enter pounds")
        output=$(convert "$input * 0.453592")
        show_result "lb" "kg" "$input" "$output"
        ;;
      2)
        input=$(read_value "Enter kilograms")
        output=$(convert "$input / 0.453592")
        show_result "kg" "lb" "$input" "$output"
        ;;
      3)
        input=$(read_value "Enter ounces")
        output=$(convert "$input * 28.3495")
        show_result "oz" "g" "$input" "$output"
        ;;
      4)
        input=$(read_value "Enter grams")
        output=$(convert "$input / 28.3495")
        show_result "g" "oz" "$input" "$output"
        ;;
      *)
        echo "Invalid option."
        ;;
    esac
  done
}
