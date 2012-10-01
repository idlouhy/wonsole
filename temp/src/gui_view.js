define([
  'jquery',
  'backbone',
  "text!./client.html",
  "./backend_service"
], function ($, BB, clientTemplate, BackendService) {

  var View = BB.View.extend({

//happening when button pressed
    events: {
      'click .getBooks': 'bookSelected'
    },

    initialize: function (args) {
      this.backendService = args.backendService || BackendService;
    },

    render: function () {
      this.$el.append(clientTemplate);
      this.$el.trigger('create');
    },

//get books from backend
    bookSelected: function () {
      this.$el.find(".book-list").empty();
      this.backendService.getObject(_.bind(function (data) {
        this.createBookView(data);
      }, this));
    },

    createBookView: function (book){
        //appends all the book to the gui view
      book.each(_.bind(function(b){
        var html = _.template(clientTemplate, b.attributes);
        this.$el.find(".book-list").append(html);

        //adding to the view with model
        var bv = new BookView({
          el: html,
          model: new BookModel()
        });
        bv.model.setBook(b.attributes);
      }, this));
      this.$el.trigger('create');
    }
  });

  return View;
});