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
nircmd.exe setsysvolume 50000

:hidden

:: Cerrar el Explorador de archivos (oculta barra de tareas y escritorio)
::taskkill /f /im explorer.exe

rem Configurar la ruta de la imagen en la carpeta temporal
set "imagen=%temp%\bormilla.jpg"

rem Descargar la imagen desde internet usando PowerShell
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Uocf1ECXac_MHIdh8ySMDvz1fyemiTEGuw&s', '%imagen%')"


set "repeticiones=3"


for /L %%i in (1,1,%repeticiones%) do (
    start "" "%imagen%"
    start https://www.youtube.com/watch?v=dQw4w9WgXcQ  
)


timeout /t 1 /nobreak >nul
goto loop
