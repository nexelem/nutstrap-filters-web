module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    coffee:
      files:
        flatten: false
        expand: true
        cwd: "src/main/assets"
        src: ["**/*.coffee"]
        dest: "dist"
        ext: ".js"

    concat:
      dist:
        src: ['dist/Slice.js',
              'dist/Truncate.js',
              'dist/Capitalise.js',
              'dist/CleanAndCapitalise.js',
              'dist/Reverse.js',
              'dist/NormalizeId.js'
        ],
        dest: 'dist/filters-module.min.js'

    uglify:
      dist :
        files: [{
          expand: true
          cwd: "dist/"
          src: '**/*.js'
          dest: "dist"
          flatten: false
        }],
        options: {
          mangle: false,
          compress: true
        }

  # Load tasks
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['coffee']
  grunt.registerTask 'dist', ['coffee', 'concat', 'uglify']