#!/bin/bash

USUARIO_HASH=$1
HASH=$(sudo grep $USUARIO_HASH /etc/shadow | awk -F ':' '{print $2}')

sudo groupadd p1c2_2024_gAlumno
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A1
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A2
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno -p "$HASH" p1c2_2024_A3

sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores -p "$HASH" 1c2_2024_P1

#asigno permisos para las carpetas
sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1

sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 740 /Examenes-UTN/alumno_2

sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3

sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores

sudo -u p1c2_2024_A1 bash -c 'whoami > /Examenes-UTN/alumno_1/validar.txt'
sudo -u p1c2_2024_A2 bash -c 'whoami > /Examenes-UTN/alumno_2/validar.txt'
sudo -u p1c2_2024_A3 bash -c 'whoami > /Examenes-UTN/alumno_3/validar.txt'
sudo -u p1c2_2024_P1 bash -c 'whoami > /Examenes-UTN/profesores/validar.txt'

