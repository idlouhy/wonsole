require.config({
  paths: {
    'jqm': 'lib/jquery-mobile',
    'jquery': 'lib/jquery',
    'text': 'lib/text',
    'backbone': 'lib/backbone',
    'underscore': 'lib/underscore'
  },
  shim: {
    'underscore': {
        exports: '_'
    },
    'backbone': {
        exports: 'Backbone',
        deps: [
          'underscore'
        ]
    }
  }
});