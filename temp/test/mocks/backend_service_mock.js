define(
    ['jquery',
    'backbone',
    '../../src/book_model'
    ], function ($, BB) {

	var backendServiceMock = function() {};

	var currentUser = User.getUserName();
			
	var testBook = [{
        bookname: "somebookname",
        pages: "23",
        status: "instock",
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
      }];

    backendServiceMock.getMockBook = function () {
        return testBook;
    };

	backendServiceMock.getObject = function(callback) {
		var CollectionBooks = BB.Collection.extend({
			model: BookModel
		});

		var status = "200 OK";

		callback(new CollectionBooks(testBook), status);
	};

	backendServiceMock.sendObject = function (callback) {
		var status = "200 OK";
		var data = "book";
		callback(data, status);
	};

	return backendServiceMock;
});