#!/bin/bash

status=$(bluetoothctl show | grep "Powered:" | awk '{print $2}')

if [ "$status" = "yes" ]; then
    # Desativa o Bluetooth
    bluetoothctl power off
    notify-send -a "Informações sobre o bluetooth" -r 6666 -i "$HOME/.icons/system/bluetooth.png" "Bluetooth desligado com sucesso"
else
    # Ativa o Bluetooth
    bluetoothctl power on
    notify-send -a "Informações sobre o bluetooth" -r 6666 -i "$HOME/.icons/system/bluetooth.png" "Bluetooth ligado com sucesso"
fi
