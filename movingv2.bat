@echo off

rem Solicita la ruta del directorio de origen
set /p origen=Ingresa la ruta del directorio de origen: 

rem Solicita la ruta del directorio de destino
set /p destino=Ingresa la ruta del directorio de destino: 

rem Solicita la extensión de archivo a mover
set /p extension=Ingresa la extensión de archivo a mover (ej: .txt): 

rem Mueve todos los archivos con la extensión especificada del directorio de origen al directorio de destino
for %%f in (%origen%\*%extension%) do move "%%f" %destino%

echo Todos los archivos con la extensión %extension% han sido movidos correctamente.
pause
