#!/bin/bash

# Navegador padrão
BROWSER="google-chrome-stable --new-tab"

# Lista de favoritos: Nome seguido do comando correspondente
favorites=(
    # Compras
    "Amazon"                             "${BROWSER} https://www.amazon.com.br/"

    # Entretenimento
    "Chess.com (Xadrez online)"          "${BROWSER} https://www.chess.com/home"
    "Crunchyroll"                        "${BROWSER} https://www.crunchyroll.com/"
    "Netflix"                            "${BROWSER} https://www.netflix.com/browse"
    "YouTube"                            "${BROWSER} https://www.youtube.com/"
    "YouTube Music"                      "${BROWSER} https://music.youtube.com/"

    # Redes sociais e comunicação
    "Instagram"                          "${BROWSER} https://www.instagram.com/"
    "LinkedIn"                           "${BROWSER} https://www.linkedin.com/"
    "Mensagens"                          "${BROWSER} https://messages.google.com/web/u/0/conversations"
    "Reddit"                             "${BROWSER} https://www.reddit.com/"
    "WhatsApp"                           "${BROWSER} https://web.whatsapp.com/"

    # Serviços de produtividade
    "Canva"                              "${BROWSER} https://www.canva.com/"
    "Notion"                             "${BROWSER} https://www.notion.so/"

    # Serviços do Google
    "Drive"                              "${BROWSER} https://drive.google.com/drive/"
    "Gmail"                              "${BROWSER} https://mail.google.com/"

    # Serviços da Microsoft
    "Outlook"                            "${BROWSER} https://outlook.live.com/mail/0/"

    # Desenvolvimento e IA
    "ChatGPT"                            "${BROWSER} https://chat.openai.com/"
    "GitHub"                             "${BROWSER} https://github.com/Snaggleback/"

    # Utilitários locais
    "Arquivos de Configuração"           "kitty -e \"$HOME/Documentos/GitHub/simple-git-manager/dot.sh\""
)

# Separando nomes e comandos
declare -a favorites_name=()
declare -a favorites_exec=()

for ((i=0; i<${#favorites[@]}; i+=2)); do
    favorites_name+=("${favorites[i]}")
    favorites_exec+=("${favorites[i+1]}")
done

# Menu com rofi
choice=$(printf "%s\n" "${favorites_name[@]}" | rofi -dmenu -i -p "Favoritos:")

# Executa se algo foi selecionado
if [[ -n "$choice" ]]; then
    for i in "${!favorites_name[@]}"; do
        if [[ "${favorites_name[i]}" == "$choice" ]]; then
            eval "${favorites_exec[i]}"
            break
        fi
    done
fi
