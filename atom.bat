@echo off
call set_path.cmd
sh.exe -c 'MSYSTEM=MINGW64 exec /bin/sh --login -i -f atom.sh' 
exit
