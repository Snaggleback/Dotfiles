#!/bin/bash

# Options
options=(
    "Desligar"
    "Reiniciar"
    "Bloquear tela"
    "Encerrar sessão"
)

choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -i)

case $choice in
"Desligar")
        shutdown -h now
    ;;
"Reiniciar")
        reboot
    ;;
"Encerrar sessão")
        pkill -KILL -u "$USER"
    ;;
"Bloquear tela")
        dm-tool switch-to-greeter
    ;;
esac
