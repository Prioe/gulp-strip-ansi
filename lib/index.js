/**
 * gulp-strip-ansi - Gulp plugin to strip ansi from files
 * @version v0.2.0
 * @link https://github.com/Prioe/gulp-strip-ansi#readme
 * @license MIT
 */
var PluginError, gutil, stripAnsi, through;

through = require('through2');

stripAnsi = require('strip-ansi');

gutil = require('gulp-util');

PluginError = gutil.PluginError;

module.exports = function() {
  var transform;
  transform = function(file, encoding, callback) {
    var str;
    if (file.isNull()) {
      return callback(null, file);
    }
    if (file.isStream()) {
      return callback(new PluginError('gulp-strip-ansi', 'Streams not supported!'));
    }
    str = file.contents.toString('utf8');
    file.contents = new Buffer(stripAnsi(str));
    return callback(null, file);
  };
  return through.obj(transform);
};
