import node_resolve from 'rollup-plugin-node-resolve';
import livereload from 'rollup-plugin-livereload';

export default {
    entry: './lib/es6/src/main.js',
    dest: './dev/main.js',
    format: 'iife',
    plugins: [
        node_resolve({
            module: true,
            browser: true,
        }),
        livereload()
    ],
    name: 'starter'
}
