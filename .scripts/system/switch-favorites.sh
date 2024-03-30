#!/bin/bash

search_favorites() {
    # Função que pesquisa no nome dos favoritos
    search_item=$1
    # O primeiro e único paramêtro é o nome que deve ser procurado
    index=0
    for item in "${favorites_name[@]}"; do
    # Itera sobre o array dos nomes dos favoritos, onde cada item 
    # será um elemento, começando pelo primeiro
        if [ "${item}" = "${search_item}" ]; then
        # Se item for igual ao item que estamos pesquisando, então
            echo "${index}"
            break
        fi
        index=$((index + 1))
        # Incrementando um a cada loop
    done
}

BROWSER="google-chrome-stable --new-tab"
EDITOR="code"
# TERM="kitty"
# FILEMAN="kitty -e ranger"

favorites=(
    # Nome à ser exibido
    "Google Chrome"
    # Comando à ser executado quando escolhido
    "${BROWSER}"

    "Editor de código"
    "${EDITOR}"
    
    "YouTube"
    "${BROWSER} https://www.youtube.com/"

    "Netflix" 
    "${BROWSER} https://www.netflix.com/browse/"

    "ChatGPT"
    "${BROWSER} https://chat.openai.com/"

    "GitHub (@Snaggleback)"
    "${BROWSER} https://github.com/Snaggleback/"

    "Atualizar arquivos de configuração"
    "kitty -e \"$HOME/Documentos/Projetos (GitHub)/Dotfiles/update\""
)


# Array onde vão ficar os nomes que vão ser exibidos
favorites_name=()
# Array onde vão ficar os comandos à serem executados quando o nome for escolhido
favorites_exec=()

index=1
for item in "${favorites[@]}"; do
# item é cada elemento do array que estamos iterando
    if [ $((index % 2)) != 0 ]; then
    # Se o número for ímpar, significa que o valor é o nome a ser exibido
        favorites_name+=("${item}")
    else
    # Se o valor for par, siginifca que o valor é o comando a ser executado
        favorites_exec+=("${item}")
    fi
    index=$((index + 1))
done

choice=$(printf "%s\n" "${favorites_name[@]}" | rofi -dmenu -i)
# choice receberá o que o usuário escolheu
# perceba que só será exibido os nomes no rofi para o usuário escolher

if [ "$choice" ]; then
# Se choice não for vázio, ou seja, se o usuário escolheu algo
    exec=$(search_favorites "$choice")
    # exec receberá primeiro o index da escolha do usuário
    exec="${favorites_exec[$exec]}"
    # exec agora está assumindo o executável que está de acordo com este index

    eval "$exec"
    # Por fim, o comando em exec é executado
fi
