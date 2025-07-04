@echo off
REM ——————————————————————————
REM 1) Carrega o ambiente do VS Build Tools (64‑bit)
REM call "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\Tools\VsDevCmd.bat" amd64

REM ——————————————————————————
REM 2) Monta com ML64 e inclui debug info (/Zi)
ml64.exe /c /Zi main.asm

REM ——————————————————————————
REM 3) Linka com DEBUG, entry point e console subsystem
link.exe main.obj /DEBUG /ENTRY:main /SUBSYSTEM:CONSOLE /OUT:main64.exe

if errorlevel 1 (
  echo.
  echo ERRO no build x64, confira as mensagens acima.
  timeout /t 2 /nobreak >nul
  exit /b 1
) else (
  echo.
  echo Build 64‑bit concluído com sucesso: main64.exe
  timeout /t 2 /nobreak >nul
  exit /b 0
)

exit 0