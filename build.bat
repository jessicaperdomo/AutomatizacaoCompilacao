@echo off

REM Compilar o programa
g++ -o programa beeAqueleLa.cpp

REM Redireciona a entrada para o programa a partir do arquivo in.txt
< in.txt programa > out.txt

REM Comparar e armazenar as diferenças em um arquivo diff.txt
fc /t /l out.txt out_ref.txt > diff.txt

REM Ver se teve diferenças encontradas e quais são
if %errorlevel% EQU 0 (
    echo Arquivos sao iguais.
) else (
    echo Arquivos sao diferentes. Diferencas encontradas:
    type diff.txt
)

REM Limpar os arquivos intermediários
del programa out.txt diff.txt

pause
