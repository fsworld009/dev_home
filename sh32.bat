@echo off

rem get parent folder
rem http://stackoverflow.com/questions/16623780/how-to-get-windows-batchs-parent-folder
for %%i in ("%~dp0..") do set "folder=%%~fi"
rem call %folder%\home\set_path.cmd
rem set HOMEPATH=%~dp0

%folder%\msys64\usr\bin\sh.exe -c 'MSYSTEM=MINGW32 exec /usr/bin/bash --login -i'
