import node_resolve from 'rollup-plugin-node-resolve';
import livereload from 'rollup-plugin-livereload';

//debug
var fs = require('fs');
fs.realpath('lib/es6/src/', function(err, path) {
    if (err) {
        console.log(err);
     return;
    }
    console.log('Path is : ' + path);
});
fs.readdir('lib/es6/src/', function(err, files) {
    if (err) return;
    files.forEach(function(f) {
        console.log('Files: ' + f);
    });
});
//debug

export default {
    entry: './lib/es6/src/main.js',
    dest: './release/main.js',
    format: 'iife',
    plugins: [
        node_resolve({module: true, browser: true}),
        livereload('release')
    ],
    name: 'starter'
}
