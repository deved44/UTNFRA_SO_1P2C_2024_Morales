#!/bin/bash

Ram=$(sudo grep MemTotal /proc/meminfo | awk '{print $2" "$3}')

chassis=$(sudo dmidecode -t chassis | sudo grep Manufacturer | awk -F ': ' '{print $2}')

echo "MemTotal: " > "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt"
echo "$Ram" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt"
echo "Chassis Information" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt"
echo "Manufacturer: " >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt"
echo "$chassis" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Basico.txt"

