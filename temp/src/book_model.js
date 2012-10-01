define(["jqm", "backbone"], function ($, BB) {
  var BookModel = BB.Model.extend({

    defaults: {
        book: {
            title: "somebookname",
            pages: "23",
            status: "instock",
            discription: "blablabla",
            author: {
                name: "someguy",
                something: "something"
            },
            articipantAuthors: [{
                author: {
                    name: "someguy",
                    something: "something"
                }
            },{
                author: {
                    name: "someguy",
                    something: "something"
                }
            }]
        }
    },
    
    getBook: function () {
      return this.get("book");
    },

    setBook: function(new_book) {
      this.set({book: new_book});
    }

  });
  return Conference;
});