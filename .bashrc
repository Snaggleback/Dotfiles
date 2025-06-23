#!/bin/bash
# ~/.bashrc

export PATH="$HOME/.bin:$PATH"

# Se não estiver executando interativamente, não faz nada
[[ $- != *i* ]] && return

TERM=xterm-256color

# Executando o script de frases aleatórias
cowsay "$("$HOME/.scripts/info/random-phrases.sh")"

# Colore a saída do comando ls
alias ls='ls --color=auto'
# Colore a saída do comando grep
alias grep='grep --color=auto'

# Comando melhorado de limpar a tela
alias clear='tput reset'

# Atalhos para o gerenciador de pacotes:
alias remove='sudo pacman -Rns'  # Remove um programa
alias install='sudo pacman -Sy'  # Instala um programa
alias search='pacman -Ss'        # Pesquisa por um programa
alias depend='pacman -Qi'        # Verifica as dependencias de um programa
alias installed='pacman -Qe'     # Lista os pacotes instalados
alias update='sudo pacman -Syyu' # Sincroniza e procura por atualizações
alias orphans='pacman -Qdtq'     # Lista os pacotes orfãos

alias compose='docker-compose' # Atalho para docker-compose

# Agora exibe o ascii do cowsay dizendo uma frase aleatória quando o comando roda
alias neofetch='neofetch --ascii "$(cowsay -f tux -W 20 $("$HOME/.scripts/info/random-phrases.sh"))"'

# Atalho para executar o script 'dots.sh'
alias dot='$HOME/Documentos/GitHub/simple-git-manager/dot.sh'

PS1='[\u@\h \W]\$ '

videodl() {
    # Baixa um video no formato mp4 no melhor formato de qualidade
    yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]' -o '%(title)s.%(ext)s' "$1"
}
audiodl() {
    # Baixa o audio de um video no formato mp3 e adiciona metadados
    yt-dlp -f 'bestaudio' \
        --extract-audio --audio-format mp3 \
        --embed-thumbnail \
        --add-metadata \
        --metadata-from-title "%(artist)s - %(title)s" \
        -o '%(title)s.%(ext)s' "$1"
}

unzipdir() {
    if [ -z "$1" ]; then
        echo "Uso: unzipdir arquivo.zip"
        return 1
    fi

    for arquivo in "$@"; do
        if [[ "$arquivo" == *.zip && -f "$arquivo" ]]; then
            pasta="${arquivo%.zip}"
            mkdir -p "$pasta" && unzip -q "$arquivo" -d "$pasta"
            echo "Extraído para: $pasta/"
        else
            echo "Ignorado: $arquivo (não é .zip ou não existe)"
        fi
    done
}
