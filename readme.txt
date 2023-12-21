# Rotina de Backup Automatizado

Este é um script em lote (`.bat`) desenvolvido para automatizar o processo de backup de saves de um jogo específico. Ele utiliza o 7-Zip para compactar os arquivos e realizar o backup com um carimbo de data e hora para identificação única.

## Funcionalidade

O script realiza as seguintes ações:

1. **Obtenção da Data e Hora Atuais:**
   - Utiliza o comando `wmic OS Get localdatetime` para obter a data e hora do sistema.

2. **Extração de Componentes de Data e Hora:**
   - Separa a data e a hora em ano, mês, dia, hora, minuto e segundo para criar um nome exclusivo para o arquivo de backup.

3. **Definição de Diretórios:**
   - `sourceFolder`: Localização do arquivo do jogo a ser copiado para backup.
   - `destinationFolder`: Local onde o arquivo compactado será salvo.
   - `zipFileName`: Nome do arquivo de backup que inclui a data e hora.

4. **Compactação e Backup:**
   - Utiliza o 7-Zip (`P:\Program Files\7-Zip\7z.exe`) para compactar o conteúdo da pasta do jogo.
   - O arquivo compactado é salvo na pasta de destino com o nome especificado.

## Uso

Certifique-se de ajustar as variáveis `sourceFolder` e `destinationFolder` para os diretórios corretos antes de executar o script. 

Execute o script (`backup_script.bat`) para iniciar o processo de backup do save do jogo. O arquivo de backup será criado na pasta de destino com o nome no formato `hallan_ano-mes-dia_hora-minuto-segundo.zip`.

### Pré-requisitos
- **7-Zip:** Certifique-se de ter o 7-Zip instalado no diretório correto (`P:\Program Files\7-Zip\7z.exe`) para que o script funcione corretamente.

### Observações
- Este script foi desenvolvido para um contexto específico e pode necessitar de adaptação para diferentes cenários ou sistemas.