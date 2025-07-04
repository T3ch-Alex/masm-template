@echo off
REM ——————————————————————————
REM 1) Carrega o Developer Command Prompt (ambiente VS 2019 BuildTools)
REM    Ajuste o path se você estiver usando outra edição/versão
REM call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat" x86

REM ——————————————————————————
REM 2) Monta com ML (32‑bit) e inclui debug info (/Zi)
ml.exe /c /Zi main.asm

REM ——————————————————————————
REM 3) Linka com DEBUG, ENTRY apontando pra tua rotina main e console subsystem
link.exe main.obj /DEBUG /ENTRY:main /SUBSYSTEM:CONSOLE /OUT:main.exe

if errorlevel 1 (
  echo.
  echo ERRO no build, veja as mensagens acima.
  timeout /t 2 /nobreak >nul
  exit /b 1
) else (
  echo.
  echo Build concluído com sucesso: main.exe
  timeout /t 2 /nobreak >nul
  exit /b 0
)

exit 0