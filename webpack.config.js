const path = require('path');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const cssLoader = {
    loader: 'css-loader', options: { modules: false },
};

const styleLoader = {
    loader: MiniCssExtractPlugin.loader,
};
const postCssLoader = {
    loader: 'postcss-loader',
};
module.exports = {
    mode: 'development',
    entry: './src/main/front/js',
    output: {
        path: path.resolve(__dirname, './src/main/webapp/static/build'),
        filename: 'build.js',
    },
    module: {
        rules: [
            {
                exclude: /\.local\.css/u,
                test: /\.css$/u,
                use: [styleLoader, cssLoader, postCssLoader],
            },
        ]
    },
    watch: true,
    plugins: [ new MiniCssExtractPlugin(),],
};
