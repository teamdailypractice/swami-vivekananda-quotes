import path from 'path';

export default function (source) {
  var callback = this.async();
  var headerPath = path.resolve('data-quotes.json');

  this.addDependency(headerPath);

  fs.readFile(headerPath, 'utf-8', function (err, header) {
    if (err) return callback(err);
    callback(null, header + '\n' + source);
  });
}