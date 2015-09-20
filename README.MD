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

gVim build I'm using
=========================
http://solar-blogg.blogspot.ca/p/vim-build.html
https://bintray.com/veegee/generic/vim_x64

    
ssh for msys2
===============================
it seems that ssh cannot locate to the correct home folder (not reading $HOME or $HOMEPATH..)
http://qiita.com/nana4gonta/items/622571c66bfe7f1c7150
Go to /msys64/etc, add
```
C:/Users/(windows user name) (path to this repo)
```
<ex>
```
C:/Users/fsworld009 /d/dev/home
```
