@echo off
set HOME=%~dp0

rem get parent folder
rem http://stackoverflow.com/questions/16623780/how-to-get-windows-batchs-parent-folder
for %%i in ("%~dp0..") do set "folder=%%~fi"

%folder%\msys64\usr\bin\sh.exe -c 'MSYSTEM=MINGW64 exec /bin/sh --login -i'
