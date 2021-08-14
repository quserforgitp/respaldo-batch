@ECHO OFF

chcp 65001 > NUL

REM OBTENER RUTA ORIGEN Y RUTA DESTINO
SET _rutaOrigen=C:\Users\IBM ThinkPad X230\Desktop\proyectosPersonales\respaldo\loc1
SET _rutaDestino=C:\Users\IBM ThinkPad X230\Desktop\proyectosPersonales\respaldo\loc2


::COPIAR ESTRUCTURA DE ARBOL DEL ORIGEN AL DESTINO
XCOPY "%_rutaOrigen%" "%_rutaDestino%" /T /E /Y

REM COMPARAR CONTENIDOS
CD "%_rutaOrigen%"
SETLOCAL EnableDelayedExpansion
FOR /D /R %%a IN (*) DO (
	SET "_siguienteDirectorio=%%a"
	DIR /B /A-D > NUL 2>&1
)

REM COPIAR CONTENIDOS NO PRESENTES EN DESTINO


REM EOF
:EOF
EXIT /B 0