import node_resolve from 'rollup-plugin-node-resolve';
import localResolve from 'rollup-plugin-local-resolve';
import livereload from 'rollup-plugin-livereload';


export default {
    input: './lib/es6/src/main.js',
    output: {
        file: './release/main.js',
        format: 'iife'
    },
    plugins: [
        node_resolve({module: true, browser: true}),
        localResolve(),
        livereload('release')
    ],
    name: 'starter'
}
