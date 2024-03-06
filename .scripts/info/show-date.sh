#!/bin/bash

notify-send -a "Data atual" -r 6666 -i "$HOME/.icons/system/clock.png" "$(date +"Hoje é %A, estamos no dia %d de %B (mês %m) de %Y e atualmente são %H horas, %M minutos e %S segundos")"
