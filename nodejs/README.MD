Install node.js packages for my vimrc setting (For my reference only)
=======
1. download Windows installer from https://iojs.org/
2. install node.js, unclick add node.js to PATH option
3. open msys2 bash
    1. goto ~/nodejs
    2. run npm_install.sh

    
Update npm
==============
npm install -g npm

Errors:
> npm ERR! not a package npm
A: Don't run this command in nodejs folder

> npm ERR! Error: EPERM: operation not permitted, open 'D:\dev\bin\nodejs\npm'
> (npm and npm.cmd disappeared)
A: copy those files from node_modules\npm\bin\
