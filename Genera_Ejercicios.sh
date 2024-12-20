#!/bin/bash

RESOLUCION="2p_2024"
PARCIAL="UTNFRA_SO_2P2C_2024"

if [ -d $HOME/$RESOLUCION/ ]; then
    echo "Por favor Ejecute: "
    echo "cd $HOME/$RESOLUCION/ "
    echo "cat $HOME/$RESOLUCION/Ejercicios.txt"
    exit 1
fi

mkdir -p $HOME/$RESOLUCION/
DIR_BASE=$(dirname "$(readlink -f "$0")")
SCRIPT_DIR="${DIR_BASE}/.Enunciados"

# Numeros Random
Nro_Punto_A="$(( ( RANDOM % 6 ) + 1 ))"
Nro_Punto_B="$(( ( RANDOM % 8 ) + 1 ))"
Nro_Punto_C="$(( ( RANDOM % 4 ) + 1 ))"
Nro_Punto_D="$(( ( RANDOM % 6 ) + 1 ))"

ECODIGO="A${Nro_Punto_A}:B${Nro_Punto_B}:C${Nro_Punto_C}:D${Nro_Punto_D}"

# --- Genera Enunciado ---#
echo " Enunciado 2do Parcial " > $HOME/$RESOLUCION/Ejercicios.txt
echo "CODIGO: $ECODIGO" > $HOME/$RESOLUCION/.Codigo.txt
# CODIGO: A1:B1:C1:D1


# A - LVM:
touch $HOME/$RESOLUCION/A_LVM.sh
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d ${SCRIPT_DIR}/A_LVM_${Nro_Punto_A}.e >> $HOME/$RESOLUCION/Ejercicios.txt 2> /dev/null)

# B - Bahs_script:
mkdir $HOME/$RESOLUCION/B_BashScript
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d ${SCRIPT_DIR}/B_Bash_${Nro_Punto_B}.e >> $HOME/$RESOLUCION/Ejercicios.txt 2>> /dev/null)
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d ${SCRIPT_DIR}/B_Bash_${Nro_Punto_B}_Lista.e >> $HOME/$RESOLUCION/B_BashScript/Lista.txt 2>> /dev/null)


# C - Docker:
cp -r ${DIR_BASE}/.Templates/C_Docker $HOME/$RESOLUCION/
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d ${SCRIPT_DIR}/C_Docker_${Nro_Punto_C}.e >> $HOME/$RESOLUCION/Ejercicios.txt 2>> /dev/null)

# D - Ansible:
cp -r ${DIR_BASE}/.Templates/D_Ansible $HOME/$RESOLUCION/
RTA=$(gpg --batch --yes --passphrase "$PARCIAL" --output - -d $SCRIPT_DIR/D_Ansible_$Nro_Punto_D.e   >> $HOME/$RESOLUCION/Ejercicios.txt 2> /dev/null)


sudo chattr +i $HOME/$RESOLUCION/Ejercicios.txt
sudo chattr +i $HOME/$RESOLUCION/.Codigo.txt
sudo chattr +i $HOME/$RESOLUCION/B_BashScript/Lista.txt


clear
echo
echo "Por favor Ejecute: "
echo "cd $HOME/$RESOLUCION/ "
echo "cat $HOME/$RESOLUCION/Ejercicios.txt"
echo
echo

