<div align="center">

# Dotfiles

Compartilhando a forma de como eu utilizo meu computador, minha persolização pessoal, aqui listados alguns sofwares que utili etc. 🙂

</div>

# Introdução

Este repositório contém minhas configurações pessoais para o gerenciador de janelas i3wm no Arch Linux. Aqui estão detalhes sobre os softwares, imagens e papéis de parede que utilizo. Sou um usuário simples ;)

![Minha área de trabalho minimalista](./Imagens/Capturas-de-tela/captura-de-tela-09-04-24-21-35-08.png)
![Minha área de trabalho minimalista](./Imagens/Capturas-de-tela/captura-de-tela-12-10-24-11-52-41.png)
![Minha área de trabalho minimalista](./Imagens/Capturas-de-tela/captura-de-tela-12-10-24-11-58-42.png)

## Tema da Nova Aba

Para personalizar minha nova aba, utilizo a extensão NightTab com a seguinte personalização/configuração:

<details>
<summary>Tema</summary>

```json
{"nightTab":true,"version":"7.5.0","state":{"language":"system","layout":{"area":{"header":{"width":76,"justify":"center"},"bookmark":{"width":78,"justify":"center"}},"alignment":"center-center","order":"header-bookmark","direction":"vertical","size":76,"width":60,"padding":64,"gutter":50,"breakpoint":"xs","scrollbar":"none","title":"Nova guia","favicon":"https://images.emojiterra.com/google/noto-emoji/unicode-15.1/color/svg/1f44b.svg","overscroll":{"active":false,"unblur":false}},"header":{"item":{"justify":"center"},"greeting":{"show":true,"type":"none","custom":"Opaa","name":"Opa, Ítalo!","size":400,"newLine":false},"transitional":{"show":false,"type":"time-and-date","size":124,"newLine":false},"clock":{"hour":{"show":false,"display":"number"},"minute":{"show":false,"display":"number"},"second":{"show":false,"display":"number"},"separator":{"show":true,"text":""},"meridiem":{"show":false},"hour24":{"show":true},"size":500,"newLine":false},"date":{"day":{"show":false,"display":"word","weekStart":"monday","length":"long"},"date":{"show":false,"display":"number","ordinal":false},"month":{"show":false,"display":"word","length":"short","ordinal":true},"year":{"show":false,"display":"number"},"separator":{"show":true,"text":""},"format":"date-month","size":160,"newLine":true},"search":{"show":true,"width":{"by":"custom","size":50},"engine":{"selected":"google","custom":{"name":"","url":"","queryName":""}},"text":{"justify":"center"},"size":141,"newLine":true,"newTab":false,"string":""},"order":["greeting","search"],"edit":false},"bookmark":{"size":92,"url":{"show":false},"line":{"show":false},"shadow":{"show":true},"hoverScale":{"show":true},"orientation":"bottom","style":"block","newTab":false,"edit":false,"add":false,"show":false,"item":{}},"group":{"area":{"justify":"center"},"order":"header-body","name":{"size":100},"toolbar":{"size":100},"edit":false,"add":false},"toolbar":{"location":"corner","position":"bottom-right","size":90,"accent":{"show":false},"add":{"show":true},"edit":{"show":true},"newLine":false},"theme":{"color":{"range":{"primary":{"h":0,"s":0}},"contrast":{"start":0,"end":100},"shades":14},"accent":{"hsl":{"h":0,"s":0,"l":100},"rgb":{"r":255,"g":255,"b":255},"random":{"active":false,"style":"any"},"cycle":{"active":false,"speed":300,"step":10}},"font":{"display":{"name":"Open Sans","weight":400,"style":"normal"},"ui":{"name":"Open Sans","weight":400,"style":"normal"}},"background":{"type":"color","color":{"hsl":{"h":0,"s":0,"l":6},"rgb":{"r":15,"g":15,"b":15}},"gradient":{"angle":160,"start":{"hsl":{"h":206,"s":16,"l":40},"rgb":{"r":86,"g":104,"b":118}},"end":{"hsl":{"h":219,"s":28,"l":12},"rgb":{"r":22,"g":28,"b":39}}},"image":{"url":"","blur":0,"grayscale":0,"scale":100,"accent":0,"opacity":100,"vignette":{"opacity":0,"start":90,"end":70}},"video":{"url":"","blur":0,"grayscale":0,"scale":100,"accent":0,"opacity":100,"vignette":{"opacity":0,"start":90,"end":70}}},"opacity":{"general":100},"layout":{"color":{"by":"theme","hsl":{"h":0,"s":0,"l":0},"rgb":{"r":0,"g":0,"b":0},"blur":0,"opacity":10},"divider":{"size":0}},"header":{"color":{"by":"theme","hsl":{"h":0,"s":0,"l":0},"rgb":{"r":0,"g":0,"b":0},"opacity":10},"search":{"opacity":100}},"bookmark":{"color":{"by":"theme","opacity":10,"hsl":{"h":0,"s":0,"l":0},"rgb":{"r":0,"g":0,"b":0}},"item":{"border":0,"opacity":100}},"group":{"toolbar":{"opacity":100}},"toolbar":{"opacity":100},"style":"dark","radius":260,"shadow":0,"shade":{"opacity":4,"blur":4},"custom":{"all":[],"edit":false}},"search":false,"modal":false,"menu":true},"bookmark":[]}
```

</details>

## Configurar tap-to-click e Rolagem Natural

Para configurar o tap-to-click e a rolagem natural, eu faço o seguinte: Crio o arquivo ou edito `/etc/X11/xorg.conf.d/30-touchpad.conf` com o seguinte conteúdo:

<details> <summary>Conteúdo tap-to-click e rolagem natural</summary>

```txt
Section "InputClass"
    Identifier "touchpad"
    MatchIsTouchpad "on"
    Driver "libinput"
    Option "Tapping" "on"             # Tap to click
    Option "NaturalScrolling" "true"  # Scroll natural (tipo macOS)
    Option "DisableWhileTyping" "true"
    Option "ClickMethod" "clickfinger"
EndSection
```

</details>

## Configuração do Greeter LightDM

Para configurar o Greeter LightDM GTK, eu faço o seguinte: Crio o arquivo ou edito `/etc/lightdm/lightdm-gtk-greeter.conf` com o seguinte conteúdo:

<details> <summary>Conteúdo Greeter</summary>

```txt
[greeter]
theme-name = Orchis-Grey-Dark
font-name = Cantarell 10
background = /usr/share/backgrounds/chainsaw-man-denji-transformed-black-and-white.jpg
position = 12%,center -15%,center
icon-theme-name = Papirus-Dark
indicators = ~hostname;~spacer;~clock;~spacer;~power
```

```bash
# Copiar o papéis de parede
sudo cp -r ~/Imagens/Papéis de parede/ /usr/share/backgrounds/
```

</details>

## Sofware utilizados

Irei colocar os programas abaixo que eu instalo para deixar o meu sistema assim. Eu tenho algumas fontes extras que não utilizo, mas caso eu quero mudar de fonte, já tem a opção, aqui as fontes que utilizo no meu sistema:

<details> <summary>Fontes que utilizo no meu sistema</summary>

```bash
pacman -S ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-nerd-fonts-symbols-mono ttf-noto-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
fc-cache -f
```

</details>

Fora essas fontes, eu tenho mais uns pingados de sofwares que dá de se resumir em uma lista, se eu esquecer de alguma coisa é só avisar!

<details> <summary>Listagem de programas utilizados</summary>

  -   **AUR:**
      -   `Yay`: Um gerenciador de pacotes AUR (Arch User Repository) para facilitar a instalação de software não oficial no Arch Linux

```bash
cd /temp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

  -   **Edição de Imagens:**
      -   `GIMP`: Um poderoso editor de imagens de código aberto com uma ampla gama de recursos
      -   `Inkscape`: Uma ferramenta de design vetorial de código aberto para criar e editar gráficos vetoriais

```bash
sudo pacman -S gimp inkscape
```

  -   **Edição de Código e Arquivos:**
      -   `Vim`: Um editor de texto altamente configurável construído para eficiência
      -   `Visual Studio Code`: Um editor de código-fonte desenvolvido pela Microsoft com suporte a várias linguagens e recursos de desenvolvimento
      -   `Git`: Sistema de controle de versão distribuído, amplamente utilizado no desenvolvimento de software

```bash
sudo pacman -S vim git
yay -S visual-studio-code-bin
```

  -   **Visualização de Imagens:**
      -   `Feh`: Um visualizador de imagem leve para exibir imagens em sistemas X11
      -   `W3M`: Um navegador de texto para a linha de comando

```bash
sudo pacman -S feh w3m
```

  -   **Papel de Parede:**
      -   `Nitrogen`: Um gerenciador de papéis de parede para definir e manter o plano de fundo da área de trabalho

```bash
sudo pacman -S nitrogen
```  

  -   **Lançador de Aplicativos:**
      -   `Rofi`: Um seletor de aplicativos e lançador de janelas altamente personalizável

```bash
sudo pacman -S rofi
```

  -   **Captura de Tela:**
      -   `Main`: Uma ferramenta de captura de tela rápida e eficiente
      -   `Xclip`: Um utilitário para interagir com a área de transferência do X
      -   `Xdotool`: Uma ferramenta para automatizar interações com janelas X
      -   `Xcolor`: Um utilitário para capturar cores da tela com o mouse

```bash
sudo pacman -S main xclip xdotool xcolor
```

  -   **Controle de Brilho:**
      -   `Brightnessctl`: Uma ferramenta para controlar o brilho da tela em sistemas que suportam o controle de brilho

```bash
sudo pacman -S brightnessctl
```

  -   **Controle de Áudio:**
      -   `Pactl`: Uma interface de linha de comando para controlar o PulseAudio, o sistema de som padrão do Linux. Ele já veio padrão, não precisei instalar
      -   `Playerctl`: Um utilitário para controlar players de música via linha de comando

```bash
sudo pacman -S playerctl
```

  -   **Modo Noturno:**
      -   `Redshift`: Um aplicativo que ajusta a temperatura da cor da tela de acordo com a hora do dia para reduzir a fadiga ocular

```bash
sudo pacman -S redshift
```

  -   **Conectividade Bluetooth:**
      -   `Bluetoothctl`, `Blueman`, `Bluez` e `Bluez-utils`: Conjunto de ferramentas para configurar e gerenciar dispositivos Bluetooth no Linux

```bash
sudo pacman -S bluetoothctl blueman bluez bluez-utils
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
```

  -   **Informações da Bateria:**
      -   `Acpi`: Um utilitário para exibir informações sobre dispositivos ACPI, incluindo bateria

```bash
sudo pacman -S acpi
```

  -   **Gerenciador de Arquivos:**
      -   `Ranger`: Um gerenciador de arquivos baseado em texto para a linha de comando, com navegação estilo Vim

```bash
sudo pacman -S ranger
```

  -   **Personalização do Ambiente:**
      -   `Lxappearance`: Uma ferramenta para personalizar o tema GTK e o ícone do cursor do mouse
      -   `Lxsession`: Um gerenciador de sessão leve que permite iniciar aplicativos de sessão como o `lxpolkit`, útil para gerenciar permissões de root gráficas

```bash
sudo pacman -S lxappearance lxsession
```

  -   **Bordas Arredondadas, Blur, etc.:**
      -   `Picom`: Um compositor leve que fornece transparência, sombras e outras efeitos visuais para gerenciadores de janelas

```bash
sudo pacman -S picom
```

  -   **Terminal:**
      -   `Kitty`: Um emulador de terminal altamente configurável e performático

```bash
sudo pacman -S kitty
```

  -   **Notificações:**
      -   `Dunst`: Um leve e personalizável daemon de notificações para sistemas X11

```bash
sudo pacman -S dunst
```
  -   **Navegador Web:**
      -   `Google Chrome` ou `Chromium`: Navegadores da Web desenvolvidos pelo Google, conhecidos por sua rapidez e suporte a tecnologias web modernas. Utilizo mais sites online, então me serve muito um navegador

```bash
yay -S google-chrome
sudo pacman -S chromium
```

  - **Economia de Energia:**
    -   `TLP`: Um utilitário para gerenciar a eficiência energia do sistema
    -   `CpuPower`: Um utilitário para gerenciar a eficiência da CPU do sistema
    -   `Powertop`: Ferramenta de diagnóstico e otimização do consumo de energia, útil para laptops

```bash
sudo pacman -S tlp cpupower powertop
# Ativa e inicia o TLP
sudo systemctl enable tlp
sudo systemctl start tlp
# Ativa e inicia o CPU Power
sudo systemctl enable cpupower
sudo systemctl start cpupower
sudo cpupower frequency-set -g powersave # Ajusta a frequência da CPU para o modo de economia de energia
```

  -   **Barra de Status:**
      -   `i3blocks`: Um gerenciador de status modular para a barra do i3wm, que permite exibir informações como volume, bateria, data, uso de CPU/RAM, entre outros, por meio de scripts personalizáveis

```bash
sudo pacman -S i3blocks
```

  - **Leitor de Código de Barras / QR Code:**
      -   `Zbar`: Ferramenta de linha de comando para ler códigos de barras e QR codes a partir da câmera ou imagens

```bash
sudo pacman -S zbar
```

  - **Terminal:**
      -   `Neofetch`: Mostra informações do sistema de forma visual no terminal
      -   `Cowsay`: Gera mensagens divertidas no terminal com figuras em ASCII
      -   `jq`: Um processador de linha de comando leve e poderoso para manipular e analisar dados JSON

```bash
sudo pacman -S neofetch cowsay jq
```

  - **Downloads de Vídeos:**
      -   `yt-dlp`: Um utilitário moderno de linha de comando para baixar vídeos e áudios de sites como YouTube

```bash
sudo pacman -S yt-dlp
```

</details>

## Papéis de parede

Os Papéis de parede incluídos neste repositório são usados para personalizar a aparência do sistema, e gostaria de destacar que alguns dos Papéis de parede utilizados não possui informações claras sobre a licença e o autor. Eu fiz uma busca, mas não consegui encontrar informações

Caso você seja o autor desse papel de parede ou tenha informações sobre a licença, por favor, entre em contato para que eu possa atribuir corretamente os créditos

## Tema e ícones

-   **Tema: [Orchis](https://github.com/vinceliuice/Orchis-theme) (Variação de cor: Gray)**
    -   O Orhis é um tema popular que apresenta uma aparência moderna e limpa em sistemas operacionais Linux. A variação de cor Gray do tema oferece uma paleta de cores suaves e elegantes, que combinam bem com a maioria das interfaces gráficas de usuário
-   **Ícones: [Papyrus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)**
    -   Os ícones Papyrus são conhecidos por sua aparência nítida e detalhada, o que os torna ideais para uso em telas de alta resolução. Eles também têm uma grande variedade de ícones disponíveis, cobrindo muitas categorias diferentes de aplicativos e pastas
-   **Cursor: [Simp1e](https://gitlab.com/cursors/simp1e)**
    -   Como descrito pelo criador "An aesthetic cursor theme for Linux desktops" ou para quem não fala árabe "Um elegante tema de cursor para ambientes de desktop Linux"

## Contribuição

Sinta-se à vontade para explorar, utilizar e adaptar meus dotfiles de acordo com suas necessidades. Se você encontrar algum problema ou tiver sugestões de melhoria, fique à vontade para abrir uma issue ou enviar uma solicitação de pull

## Licença

Este projeto é licenciado sob a [Licença MIT](./LICENSE). Veja o arquivo `LICENSE` para obter mais detalhes

> **Nota:** Tenha cuidado ao utilizar essas configurações em seu sistema. É recomendado que você faça backup de seus arquivos de configuração existentes antes de substituí-los pelos fornecidos neste repositório
