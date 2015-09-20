cp -f git.js ../../bin/nodejs/node_modules/npm/lib/utils/git.js
cp -f npmrc ../../bin/nodejs/node_modules/npm/npmrc
cd ../../bin/
./nodejs/npm install npm -g

./npm config set cache ~/npm-cache
./npm install csslint -g
./npm install tern -g
./npm install jshint -g
./npm install hexo-cli -g
./npm install -g git://github.com/ramitos/jsctags.git