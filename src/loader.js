const fs = require('fs');
const path = require('path');
const { buildLunrIndex } = require('./build-lunr-index-person')

// export default function loader(source) {
module.exports = function loader(source) {
    // console.log(this);

    // const options = this.getOptions();
    // console.log(options);
    // console.log(options.name);

    console.log(source);
    const indexedData = buildLunrIndex(source);

    // source = source.replace(/\[name\]/g, options.name);
    // const output = `export default ${JSON.stringify(indexedData)}`;
    // console.log(indexedData);
    return indexedData;

}