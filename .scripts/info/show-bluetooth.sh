#!/bin/bash

device_name="$(bluetoothctl info | sed -n 's/^.*Name:\s\(.*\)$/\1/p')"
device_mac="$(bluetoothctl info | awk '/Device/ {print $2}')"

notify-send -a "Informações sobre o bluetooth" -r 6666 -i "$HOME/.icons/system/bluetooth.png" "Você está atualmente conectado a rede bluetooth \"${device_name}\" cujo o endereço MAC é \"${device_mac}\""
