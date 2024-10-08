#!/bin/bash
# ~/.bashrc

# Se não estiver executando interativamente, não faz nada
[[ $- != *i* ]] && return

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
alias dot='$HOME/Documentos/Projetos/Simple-Git-Manager/dot.sh'

# Função para descompactar arquivos .zip
unzipdir() {
    local dir_name
    # Se o primeiro argumento for vazio, exibe o uso e retorna 1
    if [ -z "$1" ]; then
        echo "Modo de uso: unzipdir <file.zip>"
        return 1
    fi
    # Cria o nome do diretório e descompacta o arquivo
    dir_name=$(basename "$1" .zip)
    # Cria o diretório e descompacta o arquivo
    unzip "$1" -d "$dir_name"
}

PS1='[\u@\h \W]\$ '
