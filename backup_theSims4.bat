@echo off

REM Obter a data atual
for /F "tokens=2 delims==" %%I in ('wmic OS Get localdatetime /value') do set datetime=%%I

REM Extrair ano, mês, dia, hora, minuto e segundo
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set second=%datetime:~12,2%

echo "Realizando o backup do save do jogo"

REM Recebendo o local onde esta o arquivo arquivo a ser compactado 
set sourceFolder=C:\Users\halla\OneDrive\Documentos\Electronic Arts\The Sims 4\saves
REM Recebendo o local onde vai ser salvo o arquivo
set destinationFolder=B:\JOGOS\The Sims 4\Saves
REM Recebendo um nome unico
set zipFileName=hallan_%year%-%month%-%day%_%hour%-%minute%-%second%.zip

REM Realizando o compactamento da pasta com o programa 7-zip e ja salvando em um novo lugar a pasta
"P:\Program Files\7-Zip\7z.exe" a -r "%destinationFolder%\%zipFileName%" "%sourceFolder%\*.*"


start theSims4