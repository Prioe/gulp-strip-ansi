# [gulp](https://github.com/gulpjs/gulp)-strip-ansi [![Build Status](https://travis-ci.org/Prioe/gulp-strip-ansi.svg?branch=master)](https://travis-ci.org/Prioe/gulp-strip-ansi) [![npm version](https://badge.fury.io/js/gulp-strip-ansi.svg)](https://badge.fury.io/js/gulp-strip-ansi)

> Gulp plugin to strip ansi from files

## Installation

Install via [npm](https://npmjs.org/package/gulp-cat):

```
$ npm install gulp-cat --save-dev
```

## Example

```js
var gulp = require('gulp');
var stripAnsi = require('gulp-strip-ansi');

gulp.task('default', function() {
  return gulp.src('./messy.log')
    .pipe(stripAnsi())
    .pipe(gulp.dest('./nicelogs'));
});
```

## Contributing

Pull requests are always welcome!

## LICENSE

MIT License

Copyright (c) 2016 Michael Albertz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
