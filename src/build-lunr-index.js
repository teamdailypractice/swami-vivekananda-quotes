const fs = require('fs');
const lunr = require('lunr');
// const wordcut = require('./src/wordcut')
const wordcut = require('./wordcut')
lunr.wordcut = wordcut
require('./lunr.stemmer.support.js')(lunr)
require('./lunr.ta.js')(lunr)
require('./lunr.multi.js')(lunr);

// cp node_modules/lunr-languages/wordcut.js src/
// cp node_modules/lunr-languages/lunr.stemmer.support.js src/
// cp node_modules/lunr-languages/lunr.ta.js src/
// cp node_modules/lunr-languages/lunr.multi.js src/

function buildLunrIndex(sourceData) {
  // console.log("buildLunrIndex: " + sourceDataJsonFile);
  // let rawData = fs.readFileSync(sourceDataJsonFile);
  let jsonData = JSON.parse(sourceData);

  var idx = lunr(function () {
    // this.use(lunr.multiLanguage('en', 'ta'));
    
    this.ref('id');
    this.field('day');
    this.field('quote');
    this.field('month');
    
    // This is required to provide the position of terms in
    // in the index. Currently position data is opt-in due
    // to the increase in index size required to store all
    // the positions. This is currently not well documented
    // and a better interface may be required to expose this
    // to consumers.
    this.metadataWhitelist = ['position'];

    // This is the biggest change to the interface over the
    // 0.x and 1.x branches. Documents must be added to the
    // index within this closure. When this function completes
    // the index is immutable, no more documents can be added.
    jsonData.forEach(function (doc) {
      
      this.add(doc)
    }, this)
  });

  return JSON.stringify(idx);

}

  // const jsonData = JSON.parse();
module.exports = {
  buildLunrIndex
};
