#!/bin/bash

# Navegador padrão
BROWSER="google-chrome-stable --new-tab"

# Lista de favoritos: Nome seguido do comando correspondente
favorites=(
    "Amazon.com.br"                      "${BROWSER} https://www.amazon.com.br/"
    "Drive (Google)"                     "${BROWSER} https://drive.google.com/drive/"
    "Gmail (Google)"                     "${BROWSER} https://mail.google.com/"
    "Documentos (Google)"                "${BROWSER} https://docs.google.com/document/u/0/?hl=pt-BR"
    "Planilhas (Google)"                 "${BROWSER} https://docs.google.com/spreadsheets/u/0/"
    "Mensagens (Google)"                 "${BROWSER} https://messages.google.com/web/u/0/conversations"
    "Reddit"                             "${BROWSER} https://www.reddit.com/"
    "YouTube"                            "${BROWSER} https://www.youtube.com/"
    "YouTube (Assistir mais tarde)"      "${BROWSER} https://www.youtube.com/playlist?list=WL"
    "YouTube Music"                      "${BROWSER} https://music.youtube.com/"
    "Netflix"                            "${BROWSER} https://www.netflix.com/browse"
    "Crunchyroll"                        "${BROWSER} https://www.crunchyroll.com/"
    "WhatsApp"                           "${BROWSER} https://web.whatsapp.com/"
    "GitHub (@Snaggleback)"              "${BROWSER} https://github.com/Snaggleback/"
    "ChatGPT"                            "${BROWSER} https://chat.openai.com/"
    "CodeSandBox"                        "${BROWSER} https://codesandbox.io/dashboard/recent"
    "Gemini"                             "${BROWSER} https://gemini.google.com/app"
    "Microsoft Copilot"                  "${BROWSER} https://copilot.microsoft.com/"
    "LinkedIn"                           "${BROWSER} https://www.linkedin.com/"
    "Canva"                              "${BROWSER} https://www.canva.com/"
    "Notion"                             "${BROWSER} https://www.notion.so/"
    "Instagram"                          "${BROWSER} https://www.instagram.com/"
    "Chess.com (Xadrez online)"          "${BROWSER} https://www.chess.com/home"
    "Duolingo"                           "${BROWSER} https://www.duolingo.com/learn"
    "Pinterest"                          "${BROWSER} https://br.pinterest.com/"
    "TikTok"                             "${BROWSER} https://www.tiktok.com/messages?lang=pt-BR"
    "Arquivos de Configuração"           "kitty -e \"$HOME/Documentos/GitHub/Simple-Git-Manager/dot.sh\""
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
