define(
  ['jqm',
    'src/backend_service'
  ], function ($, backendService) {

	var Books = function () {};

	Books.prototype.initialize = function (bookJson) {
		for(var i in bookJson){
			this.bookList[bookJson[i].title] = bookJson[i];
		}
		client.renderBooks(this.bookList);
	};

	Books.prototype.update = function (books) {

	};

	Books.prototype.get = function () {
		return this.bookList;
	};

	Books.prototype.getBooksFromBackend = function (b) {
		this.books = backendService.get('id');
		b(this.books);
	};

	Books.prototype.getBooks = function () {
		return this.books;
	};

	return new Books();
});