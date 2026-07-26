#!/bin/bash

# Nomes dos dispositivos
SINK_NAME="scrcpy_virtual_sink"
SOURCE_NAME="scrcpy_virtual_source"

echo "🛠️  Configurando Mic Virtual..."

# 1. Carrega os módulos
SINK_ID=$(pactl load-module module-null-sink sink_name="$SINK_NAME" sink_properties=device.description="Microfone_Virtual_Scrcpy")
SOURCE_ID=$(pactl load-module module-remap-source master="$SINK_NAME.monitor" source_name="$SOURCE_NAME" source_properties=device.description="Microfone_Virtual_Scrcpy_Source")

echo "✅ Dispositivo criado com sucesso!"
echo "SINK: $SINK_NAME"
echo "SOURCE: $SOURCE_NAME"
echo "-----------------------------------"
echo "O Mic Virtual está ativo."
echo "Abra o 'pavucontrol', vá em 'Reprodução' e mova o scrcpy para '$SINK_NAME'."
echo "Pressione [Ctrl+C] para encerrar e remover o mic virtual."

# Função de limpeza ao fechar o script
cleanup() {
    echo -e "\n🧹 Removendo dispositivos virtuais..."
    pactl unload-module "$SOURCE_ID"
    pactl unload-module "$SINK_ID"
    echo "Pronto! Tudo limpo."
    exit
}

# Captura sinal de interrupção (Ctrl+C) para rodar a limpeza
trap cleanup SIGINT SIGTERM

# Mantém o script em execução
while true; do sleep 1; done
