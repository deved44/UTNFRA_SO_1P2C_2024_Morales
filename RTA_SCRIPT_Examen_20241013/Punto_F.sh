#!/bin/bash

ip_publica=$(curl -s ifconfig.me)

usuario=$(whoami)

hash_usuario=$(sudo grep "$usuario" /etc/shadow | awk -F: '{print $2}')

repo_url=$(git remote get-url origin)

echo "Mi IP Publica es: $ip_publica" > "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt"
echo "Mi usuario es: $usuario" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt"
echo "El Hash de mi Usuario es: $hash_usuario" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt"
echo "La URL de mi repositorio es: $repo_url" >> "$HOME/repogit/UTNFRA_SO_1P2C_2024_Morales/RTA_ARCHIVOS_Examen_20241013/Filtro_Avanzado.txt"

