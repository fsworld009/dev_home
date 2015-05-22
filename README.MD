About this repository
==========================
I'm trying to create a portable development folder integrate with msys2, git(under msys2), gvim, and programming language binaries such as python, ruby, Java, under Windows 7 x64.  
This repository is the home folder for this portable development environment.


Installation 
==========================
1. Run install.bat
2. Start with sh.bat
    1. (Better: sh.bat with ConEmu)
3. sh msys2_setup_script.sh

Install Node.js packages for my vimrc setting (For my reference only)
=======
1. download Windows Binary from https://nodejs.org/download/, put everything in dev/bin/node.js
2. download http://nodejs.org/dist/npm/npm-1.4.9.zip and put everything in dev/bin/node.js
3. open msys2 bash
    1. goto /home/node.js/
    2. run npm_install.sh
