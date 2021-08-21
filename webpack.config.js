const path = require('path');

module.exports = {
    mode: 'development',
    entry: './src/main/js',
    watch: true,
    output: {
        path: path.resolve(__dirname, './src/main/webapp/static/js'),
        filename: 'build.js',
    },
};