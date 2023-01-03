const fs = require('fs');
const path = require('path');
const { buildLunrIndex } = require('./build-lunr-index')
const sourceData = require('../data-in/data-quotes.json')

const indexedData = buildLunrIndex(JSON.stringify(sourceData));

const DATA_DIRECTORY = "data-out"
const filename = "index.json";
const outputFile = path.join(process.cwd(),DATA_DIRECTORY,filename)
fs.writeFile(
    outputFile,
    indexedData,
    () => console.log(`Build index - completed: ${outputFile}`)
);