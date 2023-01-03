const path = require('path');

module.exports = {
    entry: './src/main_thirukkural.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'index.js'
    },
    mode: 'production',

};
