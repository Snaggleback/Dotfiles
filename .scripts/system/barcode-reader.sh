#!/bin/bash

# Captura uma região da tela com maim
maim -o -u -s /tmp/barcode-reader-img.png

# Melhora a imagem do QR Code
convert /tmp/barcode-reader-img.png -colorspace Gray -threshold 60% /tmp/barcode-reader-img-processed.png
# Lê o QR Code da captura usando zbarimg
qr_result=$(zbarimg --raw /tmp/barcode-reader-img-processed.png 2>/dev/null)

# Verifica se o QR Code foi lido corretamente
if [ -n "$qr_result" ]; then
    # Copia o conteúdo do QR Code para a área de transferência usando xclip
    echo "$qr_result" | xclip -selection clipboard

    # Notifica o usuário com uma ação
    notify-send -a "Leitor de códigos de barras" -r 6666 -i "$HOME/.icons/system/barcode-reader.png" \
        "Conteúdo do QR Code copiado para a área de transferência: $qr_result"
else
    notify-send -a "Leitor de códigos de barras" -r 6666 -i "$HOME/.icons/system/barcode-reader.png" "Nenhum código QR encontrado"
fi

# Limpa o arquivo temporário
rm /tmp/barcode-reader-img.png
