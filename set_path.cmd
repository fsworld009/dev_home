set HOME=%~dp0
rem get parent folder
rem http://stackoverflow.com/questions/16623780/how-to-get-windows-batchs-parent-folder
for %%i in ("%~dp0..") do set "ROOT=%%~fi"

set JAVA_HOME=%ROOT%\bin\jdk1.8
set ATOM_HOME=%ROOT%\home\.atom\

set PATH=%JAVA_HOME%\bin\;%PATH%
set PATH=%ROOT%\msys64\usr\bin\;%PATH%
set PATH=%ROOT%\bin\nodejs\;%PATH%
set PATH=%ROOT%\bin\tidy\;%PATH%
set PATH=%ROOT%\bin\ctags\;%PATH%
set PATH=%ROOT%\bin\python3\;%PATH%
set PATH=%ROOT%\vim\;%PATH%
rem set PATH=%ROOT%\bin\python2\;%PATH%

set NODE_PATH=%folder%\bin\nodejs\node_modules\