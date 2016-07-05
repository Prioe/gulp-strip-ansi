gulp = require 'gulp'
coffee = require 'gulp-coffee'
gutil = require 'gulp-util'

gulp.task 'build', ->
  gulp.src(['!node_modules/**/*', '!gulpfile.coffee', '**/*.coffee'])
    .pipe(coffee( bare: true )).on('error', gutil.log)
    .pipe(gulp.dest('.'))
