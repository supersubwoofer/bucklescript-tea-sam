import node_resolve from 'rollup-plugin-node-resolve';
import livereload from 'rollup-plugin-livereload';

export default {
    entry: './lib/es6/src/main.js',
    dest: './release/main.js',
    format: 'iife',
    plugins: [
        node_resolve({
            jsnext: true,
            main: true,
            module: true,
            browser: true,
        }),
        livereload('release')
    ],
    name: 'starter'
}
