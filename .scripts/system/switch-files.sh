#!/bin/bash

# Editor de código que serve para editar os arquivos
EDITOR="code"

files=(
    "i3 - $HOME/.config/i3/config"
    "scripts - $HOME/.scripts"
    "kitty - $HOME/.config/kitty/kitty.conf"
    "rofi - $HOME/.config/rofi"
    "picom - $HOME/.config/picom/picom.conf"
    "ranger - $HOME/.config/ranger/rc.conf"
    "dusnt - $HOME/.config/dunst/dunstrc"
    "bash - $HOME/.bashrc"
)

# choice receberá a escolha que o usuário clicou ou apertou sobre o enter
choice=$(printf "%s\n" "${files[@]}" | rofi -dmenu)

if [ "${choice}" ]; then
    # Se a escolha der certo, não tiver interrupções
    file_path=$(echo "${choice}" | awk -F " - " '{print $2}')
    # Pega o caminho do arquivo que é separado pelo " - "
    $EDITOR "${file_path}"
    # Abre com o editor definido
fi
