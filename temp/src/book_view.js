define([
  "jquery", // look nice: jqm, tests work: jquery
  "backbone",
  "text!./book_view.html",
  "src/backend_service"
], function ($, BB, bookViewTemplate, BackendService) {
	var BookView = BB.View.extend({

		events: {
		},

		initialize: function (args) {
			this.model.on('change', this.update);
		},

		render: function (){
			var h = _.template(bookViewTemplate, this.model.toJSON());
			this.$el.append(h).trigger( 'updatelayout' );
			this.$el.trigger('create');
		},

		rerender: function (conference) {

		},

		update: function() {
			var bookJson = this.getBook();
		}

	});
	return BookView;
});