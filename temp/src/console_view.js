define([
  'jquery',
  'backbone',
  "text!./console_view.html",
  "./backend_service"
], function ($, BB, consoleTemplate, BackendService) {

  var Console = BB.View.extend({

  });

  return Console;
});