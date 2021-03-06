var persistence_type = {
  demo : {value: 0, name: "Demo", path: "demo://"},
  local : {value: 1, name: "Local", path: "http://127.0.0.1:5984/"},
  couchdb : {value: 2, name: "CouchDB", path: "/couchdb"}
};

var persistence = persistence_type.couchdb;

var persistence_cache_db = null;
var persistence_cache_docs = null;
var persistence_cache_doc = null;

function persistence_list_databases(callback) {
	if (persistence == persistence_type.demo) {
		callback(JSON.parse('["authors", "library", "books" ]'));
	}
	else {
		persistence_get(persistence.path+"/_all_dbs", function(data) {
            var dbs = [];
            $.each(data, function(key, value) {
                if (value[0] != '_') {
                    dbs.push(value);
                }
            });
            persistence_cache_db = dbs;
            callback(dbs);
		});
	}
}

function persistence_list_docs(database, callback) {
	if (persistence == persistence_type.demo) {
		callback(JSON.parse('[{"_id":"1", "title":"title1", "price":10, "author" : {"name":"ivo", "surname":123}}, {"_id":"2", "title":"title2", "price":20}]'));
	}
	else {
		var path = persistence.path+'/'+database+'/_all_docs?include_docs=true';
		persistence_get(path, function(json) {
			log(JSON.stringify(json));
			var docs = [];
			$.each(json.rows, function(key, value) {
				docs.push(value.doc);
			});
			persistence_cache_docs = docs;
			
			callback(docs);
		});
	}
}


function persistence_commit() {
	//commit the changes
    
    var post = {};
    post["docs"] = []    
    
    for (var i=0; i < docs.length; i++) {
      post["docs"].push(docs[i]);
    }
    
    //add removed documents with atribute deleted
    for (var i=0; i < docs_removed.length; i++) {
      docs_removed[i]._deleted = true;
      docs_removed[i].deleted = true;
      post["docs"].push(docs_removed[i]);
    }
        
    log(JSON.stringify(post));
    $.ajax({
          type: "POST",
          contentType: 'application/json; charset=UTF-8',
          data: JSON.stringify(post),
          url: "/couchdb/"+database+"/_bulk_docs",
        dataType: 'json',
        cache: 'false',
            success: function(obj) {
            log(JSON.stringify(obj));
            docs_remove = [];
        },
        error: function(obj) {
            log(JSON.stringify(obj));
        }
    });    
}

function persistence_get(path, success_callback) {
  $.ajax({
    url: path,
    type: 'GET',
    dataType: 'json',
    cache: 'false',
    success: success_callback
  });
}
