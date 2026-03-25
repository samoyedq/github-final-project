#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal × Rate × Time) / 100

echo "======================================"
echo "Simple Interest Calculator"
echo "======================================"
echo ""

# Get user input for Principal
echo "Enter the Principal amount (in currency units):"
read -p "Principal: " principal

# Validate principal input
if ! [[ "$principal" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: Principal must be a valid number"
    exit 1
fi

# Get user input for Rate of Interest
echo ""
echo "Enter the Rate of Interest (in percentage per annum):"
read -p "Rate of Interest (%): " rate

# Validate rate input
if ! [[ "$rate" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: Rate must be a valid number"
    exit 1
fi

# Get user input for Time Period
echo ""
echo "Enter the Time Period (in years):"
read -p "Time Period (years): " time

# Validate time input
if ! [[ "$time" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo "Error: Time Period must be a valid number"
    exit 1
fi

# Calculate Simple Interest
# SI = (Principal × Rate × Time) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
# Total Amount = Principal + Simple Interest
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo ""
echo "======================================"
echo "Results:"
echo "======================================"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo ""
echo "Simple Interest: $simple_interest"
echo "Total Amount (Principal + Interest): $total_amount"
echo "======================================"
