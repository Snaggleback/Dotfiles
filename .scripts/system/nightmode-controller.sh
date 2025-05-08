#!/bin/bash

# Diretório onde os arquivos de status e temperatura serão armazenados
status_dir="$HOME/.status"
mkdir -p "${status_dir}"

# Arquivos de estado e temperatura atual
state_file="${status_dir}/nightmode"
temp_file="${status_dir}/nightmode_temp"

# Temperaturas padrão (em Kelvin)
DEFAULT_TEMP=2500       # Temperatura mínima (modo noturno mais intenso)
DEFAULT_NIGHT_TEMP=6500 # Temperatura máxima (modo noturno desativado)
STEP=200                # Passo de ajuste da temperatura, 5%

# Define a temperatura da tela e atualiza os arquivos de controle
set_temp() {
    temp=$1
    redshift -P -O "$temp" >/dev/null
    echo "$temp" >"$temp_file"

    # Atualiza o estado com base na temperatura definida
    if [ "$temp" -lt "$DEFAULT_NIGHT_TEMP" ]; then
        echo "on" >"$state_file"
    else
        echo "off" >"$state_file"
    fi
}

# Lê a temperatura atual do arquivo ou retorna a temperatura padrão
get_temp() {
    if [ -f "$temp_file" ]; then
        cat "$temp_file"
    else
        echo "$DEFAULT_TEMP"
    fi
}

# Verifica e aplica o modo noturno se estiver ativo
verify_status() {
    current_status="off"
    if [ -f "$state_file" ]; then
        current_status=$(cat "$state_file")
    fi

    # Reaplica a temperatura apenas se estiver em modo noturno
    if [ "$current_status" = "on" ]; then
        set_temp "$(get_temp)"
    fi

    echo "$current_status"
}

# Aumenta a intensidade do modo noturno (reduz luz azul)
increase_intensity() {
    temp=$(get_temp)
    new_temp=$((temp - STEP))
    if [ "$new_temp" -le "$DEFAULT_TEMP" ]; then
        new_temp=$DEFAULT_TEMP
    fi

    set_temp "$new_temp"
    percent=$((100 - ((new_temp - DEFAULT_TEMP) * 100 / (DEFAULT_NIGHT_TEMP - DEFAULT_TEMP))))
    notify-send -a "Modo noturno" -r 6666 -i "$HOME/.icons/system/nightmode.png" \
        "Modo noturno aumentado para ${percent}%"
}

# Diminui a intensidade do modo noturno (aumenta luz azul)
decrease_intensity() {
    # Se o modo noturno estiver desativado, retorna sem fazer nada
    if [ "$(verify_status)" = "off" ]; then return 0; fi

    temp=$(get_temp)
    new_temp=$((temp + STEP))

    if [ "$new_temp" -ge "$DEFAULT_NIGHT_TEMP" ]; then
        new_temp=$DEFAULT_NIGHT_TEMP
        notify-send -a "Modo noturno" -r 6666 -i "$HOME/.icons/system/nightmode-off.png" \
            "Modo noturno desativado"
    else
        percent=$((100 - ((new_temp - DEFAULT_TEMP) * 100 / (DEFAULT_NIGHT_TEMP - DEFAULT_TEMP))))
        notify-send -a "Modo noturno" -r 6666 -i "$HOME/.icons/system/nightmode-off.png" \
            "Modo noturno diminuído para ${percent}%"
    fi

    set_temp "$new_temp"
}

# Execução principal
case "$1" in
"verify") verify_status ;;
"up") increase_intensity ;;   # Aumenta intensidade do modo noturno
"down") decrease_intensity ;; # Diminui intensidade do modo noturno
*) ;;
esac
