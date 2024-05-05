#!/bin/bash

# Porcetagem da bateria
battery_level=$(acpi -b | awk '{print $4}' | tr -d '%,')
# Carregando ou descarregando
battery_status=$(acpi -b | awk '{print $3}' | tr -d ',')

# Porcetagem da bateria caso ele esteja usando a energia da fonte de alimentação
[ "${battery_level}" == "charging" ] && battery_level=100

# Icone da bateria se for carregando ou descarregando
[ "${battery_status}" == "Charging" ] && icon_variable="-charging"
# Icone da bateria dependendo da porcetagem da bateria
if [ "${battery_level}" -le 20 ]; then
    icon_variable_bar="1-bar"
elif [ "${battery_level}" -le 40 ]; then
    icon_variable_bar="2-bar"
elif [ "${battery_level}" -le 60 ]; then
    icon_variable_bar="3-bar"
elif [ "${battery_level}" -le 90 ]; then
    icon_variable_bar="4-bar"
elif [ "${battery_level}" -le 100 ]; then
    icon_variable_bar="full"
fi

# Icone definitivo da bateria
icon_battery="$HOME/.icons/system/battery${icon_variable}-${icon_variable_bar}.png"

# Altera o status da bateria caso ela seja maior que 98 ou o status for igual a "Not"
[ "${battery_level}" -ge 98 ] || [ "${battery_status}" == "Not" ] && battery_status="Full"
# Altera o status da bateria caso ela seja menor que 18 para "Empty"
[ "${battery_level}" -le 18 ] && battery_status="Empty"

case "${battery_status}" in
"Discharging")
    # Mostra informaçãões sobre a bateria se estiver descarregando
    notify-send -a "Informações sobre a bateria" -r 6666 -i "${icon_battery}" "Sua bateria está descarregando, ela está em ${battery_level}%"
    ;;
"Charging")
    # Mostra informaçãões sobre a bateria se estiver carregando
    notify-send -a "Informações sobre a bateria" -r 6666 -i "${icon_battery}" "Sua bateria está carregando, ela está em ${battery_level}%"
    ;;
"Full")
    # Mostra informaçãões sobre a bateria se estiver completamente carregada
    notify-send -a "Informações sobre a bateria" -r 6666 -i "${icon_battery}" "Sua bateria está completamente carregada!"
    ;;
"Empty")
    # Mostra informaçãões sobre a bateria se estiver completamente descarregada
    notify-send -a "Informações sobre a bateria" -r 6666 -i "${icon_battery}" "Sua bateria está completamente descarregada!"
    ;;
esac

# Mostra o status da bateria no terminal como uma forma de "debug"
echo "Battery \"debug\": Ícone: ${icon_battery}, Porcentagem: ${battery_level}, Status: ${battery_status}"
