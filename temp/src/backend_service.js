define([
	'jquery',
	'backbone',
	'./book_model'
    ], function ($, BB, BookModel) {

	var backendService = function() {};
    var baseurl = "backendserviceurl";

	var statusConverter = {};

//basic for sending object
	backendService.sendObject = function (callback, object, info) {
		$.getJSON("http://" + baseurl + ":port/resturl/" + object + "/setinfo/" + info + "/", function (data, textStatus) {
			callback(data, textStatus);
		});
	};

	backendService.updateConference = function (callback, model) {
		this.postStatusForUser(callback, model.getStatus(), model.getConference().id);
	},

//basic for getting
	backendService.getObject = function(callback) {
		$.getJSON("http://" + baseurl + ":port/resturl/" + object + "/", function (data, textStatus) {
			var CollectionBooks = BB.Collection.extend({
				model: BookModel
			});
			callback(new CollectionBooks(data), textStatus);
		});
	};

	return backendService;
});