#!/bin/bash
color=$(xcolor --format "HEX")                  # Define o formato hexadecimal
echo -n "${color}" | xclip -selection clipboard # Copia para a área de transferência
notify-send -a "Selecionador de cores" -r 6666 -i "$HOME/.icons/system/color-picker.png" "Cor copiada para a área de transferência ${color}"
# Mostra uma notificação com a cor copiada
