# [gulp](https://github.com/gulpjs/gulp)-strip-ansi [![Build Status](https://travis-ci.org/Prioe/gulp-strip-ansi.svg?branch=master)](https://travis-ci.org/Prioe/gulp-strip-ansi) [![npm version](https://badge.fury.io/js/gulp-strip-ansi.svg)](https://badge.fury.io/js/gulp-strip-ansi)

> Gulp plugin to strip ansi from files

## Installation

Install via [npm](https://npmjs.org/package/gulp-strip-ansi):

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

### LICENSE

MIT License
