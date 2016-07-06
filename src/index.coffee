through = require 'through2'
stripAnsi = require 'strip-ansi'
gutil = require 'gulp-util'

PluginError = gutil.PluginError

module.exports = ->
  transform = (file, encoding, callback) ->
    if file.isNull() then return callback(null, file)
    if file.isStream() then return callback(new PluginError('gulp-strip-ansi', 'Streams not supported!'))

    str = file.contents.toString('utf8')
    file.contents = new Buffer(stripAnsi(str))
    callback(null, file)

  through.obj(transform)
