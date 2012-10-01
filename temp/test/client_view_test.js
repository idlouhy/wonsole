buster.spec.expose();

define([
  'jquery',
  'underscore',
  '../src/gui_view',
  './mocks/backend_service_mock',
  'backbone'
], function ($, _, ClientView, BackendServiceMock, BB) {
buster.testCase('Client View test', {
    setUp: function (done) {
      $( _.bind(function() {

        this.client = new ClientView({
          backendService: BackendServiceMock
        });

        done();
      }, this));
    },

    'Should exist': function () {
      assert(ClientView);
    },

    'Should extend backbone view': function () {
      assert(this.client instanceof BB.View);
    }

  });
});