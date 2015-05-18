#http://www.cyberciti.biz/tips/linux-unix-pause-command.html
function pause(){
   read -p "$*"
}

#pacman -S git --noconfirm
pause 'Press [Enter] key to continue...'

#http://stackoverflow.com/questions/3778042/github-error-cloning-my-private-repository
git config --system http.sslcainfo "/etc/git/curl-ca-bundle.crt"