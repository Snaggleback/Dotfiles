#!/bin/bash

case "${1}" in
    "on")
        notify-send -a "Informações sobre o modo de redimensionamento" -r 2222 -i "$HOME/.icons/system/settings.png" -u critical "Você ativou o modo de redimensionamento"
    ;;
    "off")
        notify-send -a "Informações sobre o modo de redimensionamento" -r 2222 -i "$HOME/.icons/system/settings.png" -u normal -t 1000 "Você desativou o modo de redimensionamento"
    ;;
esac
