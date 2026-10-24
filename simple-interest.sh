
#!/bin/bash

echo "Enter the principal amount:"
read -r p

echo "Enter the annual rate of interest (%):"
read -r r

echo "Enter the time period (in years):"
read -r t

interest=$(awk -v p="$p" -v r="$r" -v t="$t" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "Simple Interest: $interest"
