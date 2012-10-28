var persistance_cache_databases;

var persistence_type = {
  demo : {value: 0, name: "Demo", path: "demo:"},
  local : {value: 1, name: "Local", path: "file://"}, 
  couchdb : {value: 2, name: "CouchDB", path: "/couchdb"}
};


var persistence = persistence_type.couchdb;

function persistence_list_databases(callback) {
	if (persistence == persistence_type.demo) {
		return JSON.parse('["database1", "database2"]')
	}
	else {
		persistence_get(persistence.path+"/_all_dbs", function(data) {
		  console.log(JSON.stringify(data));
		  persistance_cache_databases = data;
		  callback(data);	
		});
		
		// ["authors", "_users", "library", "books" ]
	}
}


function persistence_list_views(database, callback) {
	console.log(database);
	if (persistence == persistence_type.demo) {
		return JSON.parse('["view1", "view_by_id", "view_by_title"]')
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
		return JSON.parse('{"00000001" : {"id":"1", "title":"title1"}, "00000002" : {"id":"2", "title":"title2"}}');
	}
	else {
		var path = persistence.path+'/'+database+'/'+view;
		persistence_get(path, function(json) {
			var docs = {};
			$.each(json.rows, function(key, row) {
				docs[row.id] = row.value;
				console.log(row.id);
			});
			callback(docs);
		});
	}
}

function persistence_get_doc(database, view, doc, callback) {
	if (persistence == persistence_type.demo) {
	}
	else {
		var path = persistence.path+'/'+database+'/'+doc;
		persistence_get(path, function(json) {
			callback(json);
			
			/*
			var docs = {};
			$.each(json.rows, function(key, row) {
				docs[row.id] = row.value;
				console.log(row.id);
			});
			callback(docs);
			*/
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


function persistence_get(path, success_callback) {
  $.ajax({
    url: path,
    type: 'GET',
    dataType: 'json',
    cache: 'false',
    success: success_callback,
  });
}
