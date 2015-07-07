../../bin/iojs/npm.cmd install npm -g
cp -f git.js ../../bin/iojs/node_modules/npm/lib/utils/git.js
cp -f npmrc ../../bin/iojs/node_modules/npm/npmrc
cd ../../bin/iojs/

./npm install csslint -g
./npm install tern -g
./npm install jshint -g
./npm install -g git://github.com/ramitos/jsctags.git