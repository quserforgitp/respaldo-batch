@ECHO OFF

REM OBTENER RUTA ORIGEN Y RUTA DESTINO
SET _rutaOrigen=C:\Users\IBM ThinkPad X230\Desktop\proyectosPersonales\respaldo\loc1
SET _rutaDestino=C:\Users\IBM ThinkPad X230\Desktop\proyectosPersonales\respaldo\loc2

REM COPIAR ESTRUCTURA DE ARBOL DEL ORIGEN AL DESTINO
XCOPY "%_rutaOrigen%" "%_rutaDestino%" /T /E /Y

REM COMPARAR CONTENIDOS

REM COPIAR CONTENIDOS NO PRESENTES EN DESTINO

REM EOF
:EOF
EXIT /B 0