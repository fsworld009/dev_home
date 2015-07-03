@echo off
set HOME=%~dp0

rem get parent folder
rem http://stackoverflow.com/questions/16623780/how-to-get-windows-batchs-parent-folder
for %%i in ("%~dp0..") do set "folder=%%~fi"

set PATH=%PATH%;%folder%\vim\
set PATH=%PATH%;%folder%\bin\node.js\
set PATH=%PATH%;%folder%\bin\python3\
set PATH=%PATH%;%folder%\bin\ruby2\bin\

%folder%\msys64\usr\bin\sh.exe -c 'MSYSTEM=MINGW32 exec /bin/sh --login -i'
