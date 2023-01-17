@echo off

set INPUT_FILE=

set OUTPUT_DIRECTORY=C:\ruta\al\directorio_de_salida

echo Por favor, selecciona el archivo de entrada que contiene las URLs:
set /p INPUT_FILE=

echo Ingresa la ruta al directorio de salida donde se guardarán los archivos descargados:
set /p OUTPUT_DIRECTORY=

for /f "delims=" %%i in (%INPUT_FILE%) do (
  wget -P %OUTPUT_DIRECTORY% "%%i"
)

echo ¡Hecho, revisa los archivos descargados en el directorio : %OUTPUT_DIRECTORY% !

pause
