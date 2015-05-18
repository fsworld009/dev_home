#http://www.cyberciti.biz/tips/linux-unix-pause-command.html
function pause(){
   read -p "$*"
}

#pacman -S git --noconfirm
pause 'Press [Enter] key to continue...'

#http://stackoverflow.com/questions/3778042/github-error-cloning-my-private-repository
git config --system http.sslcainfo "/etc/git/curl-ca-bundle.crt"

#disable the vim come from msys2, use vim from gvim instead ($PATH was setup by sh.bat)
cd /usr/bin/
mv vim.exe vim2.exe