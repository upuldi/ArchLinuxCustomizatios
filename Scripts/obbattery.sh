#!/bin/bash
Battery=$(acpi -b | grep "Battery" | sed -nr '/Battery/s/.*(\<[[:digit:]]+%).*/\1/p')
Thermal=$(acpi -t | grep "Thermal" | sed -nr "s/.*(\<[[:digit:]]+\.[[:digit:]]) degrees.*/\1°C/p" )
echo "<openbox_pipe_menu>"
echo "<item label=\"Batt: $Battery\"/>"
echo "<item label=\"Temp: $Thermal\"/>"
echo "</openbox_pipe_menu>"
