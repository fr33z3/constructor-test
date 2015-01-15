module.exports = function(grunt) {

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    // Configuration CoffeeScript
    // coffee: {
    //   compile: {
    //     files: {
    //       'bin/handler.forms.js': [
    //         'src/handler_forms.coffee',
    //         'src/handler_forms/form.coffee',
    //         'src/handler_forms/validation.coffee',
    //         'src/handler_forms/validation/base_validation.coffee',
    //         'src/handler_forms/validation/acceptance_validation.coffee',
    //         'src/handler_forms/validation/confirmation_validation.coffee',
    //         'src/handler_forms/validation/email_validation.coffee',
    //         'src/handler_forms/validation/exclusion_validation.coffee',
    //         'src/handler_forms/validation/format_validation.coffee',
    //         'src/handler_forms/validation/inclusion_validation.coffee',
    //         'src/handler_forms/validation/length_validation.coffee',
    //         'src/handler_forms/validation/numericality_validation.coffee',
    //         'src/handler_forms/validation/resence_validation.coffee',
    //         'src/boot.coffee'
    //       ],
    //     }
    //   }
    // },
    // uglify: {
    //   my_target: {
    //     files: {
    //       'bin/handler.forms.min.js': ['bin/handler.forms.js']
    //     }
    //   }
    // },
    server: {
      port: 1337,
      base: './src' 
    }
  });

  // Load the plugins
  // grunt.loadNpmTasks('grunt-contrib-coffee');
  // grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-coffee-server');

  // Default task(s).
  // grunt.registerTask('default', ['coffee', 'uglify']);

};