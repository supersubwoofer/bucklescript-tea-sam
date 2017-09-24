import node_resolve from 'rollup-plugin-node-resolve';

export default {
    entry: './lib/es6/src/main.js',
    dest: './release/main.js',
    format: 'iife',
    plugins: [
        node_resolve({
            module: true,
            browser: true,
        })
    ],
    name: 'starter'
}
