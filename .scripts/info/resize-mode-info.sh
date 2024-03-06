#!/bin/bash

case "${1}" in
    "on")
        notify-send -a "Informações sobre o modo de redimensionamento" -r 2222 -u critical -t 0 "Você ativou o modo de redimensionamento"
    ;;
    "off")
        notify-send -a "Informações sobre o modo de redimensionamento" -r 2222 -u normal -t 1000 "Você desativou o modo de redimensionamento"
    ;;
esac
