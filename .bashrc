# ~/.bashrc

# Se não estiver executando interativamente, não faz nada
[[ $- != *i* ]] && return

# Executando o script de frases aleatórias
cowsay "$("$HOME/.scripts/info/random-phrases.sh")"

# Colore a saída do comando
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Comando melhorado de limpar a tela
alias clear='printf "\E[H\E[3J" && clear'

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
alias neofetch='neofetch --ascii "$(cowsay -W 20 $("$HOME/.scripts/info/random-phrases.sh"))"'

PS1='[\u@\h \W]\$ '
