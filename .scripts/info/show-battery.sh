#!/bin/bash

# Icones
icon_battery_full="$HOME/.icons/system/battery-full.png"
icon_battery_charging_full="$HOME/.icons/system/battery-charging-full.png"
# Icones de bateria descarregando
icon_battery_1_bar="$HOME/.icons/system/battery-1-bar.png"
icon_battery_2_bar="$HOME/.icons/system/battery-2-bar.png"
icon_battery_3_bar="$HOME/.icons/system/battery-3-bar.png"
icon_battery_4_bar="$HOME/.icons/system/battery-4-bar.png"
# Icones de status carregado
icon_battery_charging_1_bar="$HOME/.icons/system/battery-charging-1-bar.png"
icon_battery_charging_2_bar="$HOME/.icons/system/battery-charging-2-bar.png"
icon_battery_charging_3_bar="$HOME/.icons/system/battery-charging-3-bar.png"
icon_battery_charging_4_bar="$HOME/.icons/system/battery-charging-4-bar.png"

# Porcetagem da bateria
battery_level=$(acpi -b | awk '{print $4}' | tr -d '%,')

# Carregando ou descarregando
battery_status=$(acpi -b | awk '{print $3}' | tr -d ',')

if [ "${battery_level}" -ge 98 ] || [ "${battery_status}" == "Not" ]; then
    notify-send -a "Informações sobre a bateria" -r 6666 -i "${icon_battery_full}" "Sua bateria está completamente carregada!"
    exit 0
fi


case "${battery_status}" in
    "Discharging")
        # Caso esteja descarregando; Icone
        battery_discharging_icon="${icon_battery_full}"

        # Icones caso a bateria esteja abaixo de:
        if [ "${battery_level}" -le 20 ]; then
            battery_discharging_icon="${icon_battery_1_bar}"
        elif [ "${battery_level}" -le 40 ]; then
            battery_discharging_icon="${icon_battery_2_bar}"
        elif [ "${battery_level}" -le 60 ]; then
            battery_discharging_icon="${icon_battery_3_bar}"
        elif [ "${battery_level}" -le 90 ]; then
            battery_discharging_icon="${icon_battery_4_bar}"
        fi
        
        notify-send -a "Informações sobre a bateria" -r 6666 -i "${battery_discharging_icon}" "Sua bateria está descarregando, ela está em ${battery_level}%"
    ;;
    "Charging")
        battery_charging_icon="${icon_battery_charging_full}"

         # Icones caso a bateria esteja abaixo de:
        if [ "${battery_level}" -le 20 ]; then
            battery_charging_icon="${icon_battery_charging_1_bar}"
        elif [ "${battery_level}" -le 40 ]; then
            battery_charging_icon="${icon_battery_charging_2_bar}"
        elif [ "${battery_level}" -le 60 ]; then
            battery_charging_icon="${icon_battery_charging_3_bar}"
        elif [ "${battery_level}" -le 80 ]; then
            battery_charging_icon="${icon_battery_charging_4_bar}"
        fi

        notify-send -a "Informações sobre a bateria" -r 6666 -i "${battery_charging_icon}" "Sua bateria está carregando, ela está em ${battery_level}%"
    ;;
esac

echo "${battery_status}"
