#need improvement

#http://www.cyberciti.biz/tips/linux-unix-pause-command.html
function pause(){
   read -p "$*"
}

echo "FSWorld009 dev environment setup"
pause 'Press [Enter] key to continue...'

pacman -S git --noconfirm
pause 'Press [Enter] key to continue...'

#http://stackoverflow.com/questions/3778042/github-error-cloning-my-private-repository
#git config --system http.sslcainfo "/etc/git/curl-ca-bundle.crt"

#toolchain for mingw
pacman -S mingw-w64-x86_64-toolchain --noconfirm
pause 'Press [Enter] key to continue...'
pacman -S mingw-w64-i686-toolchain --noconfirm
pause 'Press [Enter] key to continue...'
pacman -S make --noconfirm
pause 'Press [Enter] key to continue...'
pacman -S base-devel --noconfirm
pause 'Press [Enter] key to continue...'

cd ~
cd ../MINGW-packages/

#tk/tcl
cd mingw-w64-tcl
makepkg-mingw
#automatically done everything now?
#pacman -U mingw-w64-x86_64-tcl-8.6.4-1-any.pkg.tar.xz
pause 'Press [Enter] key to continue...'


#disable some binaries come from msys2, use vim from gvim instead ($PATH was setup by sh.bat)
echo 'disable vim & python from msys2'
cd /usr/bin/
mv vim.exe vim.exe_
cd /msys64/mingw64/bin
mv python.exe python.exe_
mv python2.exe python2.exe_
mv python2.7.exe python2.7.exe_
mv python2_ python2_
pause 'Press [Enter] key to continue...'




cd ~
