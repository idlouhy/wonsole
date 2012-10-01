define([
  'jquery',
	"./src/gui_view",
    "./src/console_view",
	"./src/backend_service"
	], function ($, Client, Console, BackendService) {

//mainfile to startup the other files

  $(function() {
    new BackendService();
    var client = new Client({
      el: '#gui' //hooks th egui to the indexfile
    });
    client.render();
  });
});