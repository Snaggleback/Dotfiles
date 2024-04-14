#!/bin/bash

wifi_name=$(iwgetid -r)

if [ "${wifi_name}" != "" ]; then
    notify-send -a "Informações sobre o wifi" -r 6666 -i "$HOME/.icons/system/wifi.png" "Você está atualmente conectado a rede wifi \"$wifi_name\""
else
    notify-send -a "Informações sobre o wifi" -r 6666 -i "$HOME/.icons/system/wifi-disconnected.png" "Erro: Você não está conectado a nenhuma rede wifi"
fi
