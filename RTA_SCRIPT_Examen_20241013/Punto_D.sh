#!/bin/bash

mkdir -p ~/Estructura_Asimetrica/correo ~/Estructura_Asimetrica/cliente


for i in {1..100}; do
    touch ~/Estructura_Asimetrica/correo/cartas_$i
    touch ~/Estructura_Asimetrica/cliente/cartas_$i
done


for i in {1..10}; do
    mkdir ~/Estructura_Asimetrica/correo/carteros_$i
done

