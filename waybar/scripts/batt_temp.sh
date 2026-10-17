#!/bin/bash
# Extract the 25.0 value from Thermal 0
temp=$(acpi -t | grep "Thermal 0" | awk '{print $4}')
echo "{\"text\": \" ${temp}°C\", \"tooltip\": \"System Thermal 0\"}"
