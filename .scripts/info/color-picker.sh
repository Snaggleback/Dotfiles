#!/bin/bash
color=$(xcolor --format "HEX")
color=${color//#/}   # Remove o caractere # da string
echo -n "${color}" | xclip -selection clipboard
notify-send -a "Selecionador de cores" -r 6666 -i "$HOME/.icons/system/color-picker.png" "Cor copiada para a área de transferência #${color}"
