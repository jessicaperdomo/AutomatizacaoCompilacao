@echo off

REM
g++ -o programa beeAqueleLa.cpp

REM Redireciona a entrada para o programa a partir do arquivo in.txt
< in.txt programa > out.txt

REM Compara o arquivo de saída com o arquivo de referência
fc out.txt out_ref.txt > nul

if errorlevel 1 (
    echo Arquivos são diferentes.
) else (
    echo Arquivos são iguais.
)

REM Limpa os arquivos intermediários
del programa out.txt

pause
