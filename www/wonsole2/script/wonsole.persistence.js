var persistence_type = {
  demo : {value: 0, name: "Demo", path: "demo://"},
  local : {value: 1, name: "Local", path: "http://127.0.0.1:5984/"}, 
  couchdb : {value: 2, name: "CouchDB", path: "/couchdb"}
};

var persistence = persistence_type.demo;


var persistence_cache_docs = null;
var persistence_cache_doc = null;

function persistence_list_databases(callback) {
	if (persistence == persistence_type.demo) {
		callback(JSON.parse('["authors", "_users", "library", "books" ]'));
	}
	else {
		persistence_get(persistence.path+"/_all_dbs", function(data) {
		  console.log(JSON.stringify(data));
		  callback(data);	
		});
	}
}


function persistence_list_views(database, callback) {
	console.log(database);
	if (persistence == persistence_type.demo) {
		callback(JSON.parse('["view1", "view_by_id", "view_by_title"]'));
	}
	else {
		var path = persistence.path+'/'+database+'/_all_docs?startkey="_design/"&endkey="_design0"&include_docs=true';
		persistence_get(path, function(json) {
			var views = [];
			views.push("_all_docs");
			$.each(json.rows, function(key, row) {
				var design_path = row.id;
				$.each(row.doc.views, function(key, value) {
					var view_path = design_path + '/_view/' + key
					views.push(view_path);
					console.log(view_path);
				});			  
			});
			callback(views);
		});
	}   
}

function persistence_list_docs(database, view, callback) {
	console.log(view);
	if (persistence == persistence_type.demo) {
		callback(JSON.parse('[{"_id":"1", "title":"title1", "price":10, "author" : {"name":"ivo", "surname":123}}, {"_id":"2", "title":"title2", "price":20}]'));
	}
	else {
		var path = persistence.path+'/'+database+'/'+view;
		persistence_get(path, function(json) {
			var docs = {};
			$.each(json.rows, function(key, row) {
				docs[row.id] = row.value;
				console.log(row.id);
			});
			persistence_cache_docs = docs;
			callback(docs);
		});
	}
}
/*
{"total_rows":4,"offset":0,"rows":[
{"id":"9e50827761bae06fd9b88fcd0c000219","key":null,"value":{"_id":"9e50827761bae06fd9b88fcd0c000219","_rev":"42-632ea6a7ca8d50a2a4f93921b5c5bdd2","0":"","title":"test","test":["test","data",{"id":1}],"id":"15","coauthor":["aaa","bbb","cccc"],"newatribute":"something"}},
{"id":"9e50827761bae06fd9b88fcd0c001035","key":null,"value":{"_id":"9e50827761bae06fd9b88fcd0c001035","_rev":"9-166af2de1f3bcbc51149a9369741d8c5","title":"uv35"}},
{"id":"9e50827761bae06fd9b88fcd0c0029d6","key":null,"value":{"_id":"9e50827761bae06fd9b88fcd0c0029d6","_rev":"1-967a00dff5e02add41819138abb3284d"}},
{"id":"undefined","key":null,"value":{"_id":"undefined","_rev":"14-34275954af7d1f8730fc0fef164e5400","title":"abc"}}
]}


*/




function persistence_commit() {
	//commit the changes	
	$.ajax({
          type: "PUT",
          data: JSON.stringify(book),
          url: "/couchdb/"+database+"/"+book._id,
          dataType: 'json',
          cache: 'false',
          success: function(obj) {
            alert(JSON.stringify(obj));
          },
          error: function(obj) {
            alert(JSON.stringify(obj));
          },
        });
}


function persistence_get(path, success_callback) {
  $.ajax({
    url: path,
    type: 'GET',
    dataType: 'json',
    cache: 'false',
    success: success_callback,
  });
}
