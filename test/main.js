/**
 * gulp-strip-ansi - Gulp plugin to strip ansi from files
 * @version v0.2.0
 * @link https://github.com/Prioe/gulp-strip-ansi#readme
 * @license MIT
 */
var File, assert, stripAnsi;

assert = require('assert');

File = require('vinyl');

stripAnsi = require('../');

describe('gulp-prefixer', function() {
  return it('should strip all ansi', function(done) {
    var fakeFile, stripAnsiTest;
    fakeFile = new File({
      contents: new Buffer('[0m[m[m[J[39m [34muser[31m@[32mhost[39m [44m[30m>[30m ~ [49m[34m>  [K[67C[34m[[32m20:11:47[34m][39m[77D[?1h=')
    });
    stripAnsiTest = stripAnsi();
    stripAnsiTest.write(fakeFile);
    return stripAnsiTest.once('data', function(file) {
      assert(file.isBuffer());
      assert.equal(file.contents.toString('utf8'), ' user@host > ~ >  [20:11:47]');
      return done();
    });
  });
});
