import node_resolve from 'rollup-plugin-node-resolve';
import multiEntry from 'rollup-plugin-multi-entry';
import livereload from 'rollup-plugin-livereload';


export default {
    entry: './lib/es6/src/main.js',
    input: './lib/es6/src/main.js',
    output: {
        file: './release/main.js',
        format: 'iife'
    },
    plugins: [
        node_resolve({module: true, browser: true}),
        multiEntry(),
        livereload('release')
    ],
    name: 'starter'
}
