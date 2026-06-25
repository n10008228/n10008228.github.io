# Unit Conversion Calculator

CPAN133 Operating Systems — team project by **Matheus Maggiorini** and **Andre**.

Command-line tool for length, weight, and temperature conversions on GNU/Linux.

## Requirements

- Bash
- `bc` (usually pre-installed on Humber lab systems)

## Setup (on apollo or any Linux terminal)

```bash
cd ~/CPAN133Assignments/project-unit-converter
chmod +x convert.sh
./convert.sh
```

## Supported conversions

### Length
- Centimeters ↔ Meters
- Inches → Centimeters
- Feet → Meters
- Kilometers → Miles

### Weight
- Pounds ↔ Kilograms
- Ounces ↔ Grams

### Temperature
- Fahrenheit ↔ Celsius
- Celsius ↔ Kelvin

## Example session

```
========================================
       Unit Conversion Calculator
========================================

  1) Length
  2) Weight
  3) Temperature
  0) Exit

Choose a category: 3

--- Temperature ---
  1) Fahrenheit     -> Celsius
  2) Celsius        -> Fahrenheit
  ...
Choose a temperature conversion: 1
Enter Fahrenheit: 68

68 F = 20.000000 C
```

## Git branches

| Branch | Owner | Files |
|--------|-------|-------|
| `matheus-branch` | Matheus (Team Lead) | `convert.sh`, `lib/common.sh`, `lib/length.sh`, `lib/weight.sh` |
| `andre-branch` | Andre | `lib/temperature.sh`, testing, README examples |

## Submission sections (even split)

| Matheus | Andre |
|---------|-------|
| 1. Project Topic | 3. Project Objectives |
| 2. Project Description | 4. Task Distribution |
| 5. Team Lead Name | 6. GitHub Repository URL |
