#!/bin/bash

# Editor que será aberto quando o arquivo for escolhido
EDITOR="code"

# Array onde vão ficar os arquivos que vão ser editados
files=(
    "i3 - $HOME/.config/i3/config"
    "scripts - $HOME/.scripts"
    "kitty - $HOME/.config/kitty/kitty.conf"
    "rofi - $HOME/.config/rofi"
    "picom - $HOME/.config/picom/picom.conf"
    "ranger - $HOME/.config/ranger/rc.conf"
    "dusnt - $HOME/.config/dunst/dunstrc"
    "neofetch - $HOME/.config/neofetch/config.conf"
    "bash - $HOME/.bashrc"
    "vim - $HOME/.vimrc"
)

# Cria o menu, e pega o que o usuário escolheu
choice=$(printf "%s\n" "${files[@]}" | rofi -dmenu)

# Verifica se foi escolhido algo e não teve interrupções
if [ "${choice}" ]; then
    # Se foi escolhido, pega o caminho do arquivo
    file_path=$(echo "${choice}" | awk -F " - " '{print $2}')
    # Abre o arquivo
    $EDITOR "${file_path}"
fi
