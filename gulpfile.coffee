gulp = require 'gulp'
coffee = require 'gulp-coffee'
gutil = require 'gulp-util'
file = require 'gulp-file'
header = require 'gulp-header'
rename = require 'gulp-rename'
pkg = require './package.json'

banner = ['/**',
  ' * <%= pkg.name %> - <%= pkg.description %>',
  ' * @version v<%= pkg.version %>',
  ' * @link <%= pkg.homepage %>',
  ' * @license <%= pkg.license %>',
  ' */',
  ''].join('\n')

gulp.task 'build:index', ->
  gulp.src('./src/index.coffee')
    .pipe(coffee( bare: true )).on('error', gutil.log)
    .pipe(header(banner, pkg : pkg ))
    .pipe(gulp.dest('./lib'))

gulp.task 'build:test', ->
  gulp.src('./src/test.coffee')
    .pipe(coffee( bare: true )).on('error', gutil.log)
    .pipe(header(banner, pkg : pkg ))
    .pipe(rename(basename: 'main'))
    .pipe(gulp.dest('./test'))

gulp.task 'build:entrypoint', ->
  file('index.js', 'module.exports = require(\'./lib/index\');', src: true)
    .pipe(header(banner, pkg : pkg ))
    .pipe(gulp.dest('.'))

gulp.task 'build', ['build:index', 'build:test', 'build:entrypoint']
