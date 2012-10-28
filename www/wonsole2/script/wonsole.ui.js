function ui_init() {
	ui_list_databases();
}

function ui_list_databases() {
  $('#data').html('<ul id="list"></ul>');
  var target = $('#list');
  target.text("");
  
  function ui_list_databases_line(database) {
  	target.append('<li><a  href="#/'+database+'" onclick="ui_list_views(\''+database+'\');">'+database+'</a></li>');
  }
  
  persistence_list_databases(function(json) {
  	 $.each(json, function(key, value) {
  	   ui_list_databases_line(value);
  	 });
  });
}

function ui_list_views(database) {
  $('#data').html('<ul id="list"></ul>');
  var target = $('#list');
  target.text("");
  
  target.append('<li><a  href="#" onclick="ui_list_databases();">..</a></li>');

  function ui_list_views_line(database, view) {
  	target.append('<li><a  href="#/'+database+'/'+view+'" onclick="ui_list_docs(\''+database+'\',\''+view+'\');">'+view+'</a></li>');
  }
  
  persistence_list_views(database, function(json) {
    $.each(json, function(key, value) {  	
  	  ui_list_views_line(database, value);
    });	
  });
}


function ui_list_docs(database, view) {
  $('#data').html('<ul id="list"></ul>');
  var target = $('#list');
  target.text("");

  target.append('<li><a  href="#/'+database+'" onclick="ui_list_views(\''+database+'\');">..</a></li>');

  function ui_list_docs_line(database, view, doc) {
  	target.append('<li><a  href="#/'+database+'/'+doc+'" onclick="ui_view_doc(\''+database+'\', \''+view+'\', \''+doc+'\');">'+doc+'</a></li>');
  }

  persistence_list_docs(database, view, function(json) {
  	$.each(json, function(key, value) {
  	  ui_list_docs_line(database, view, key);
  	});
  });
}


function ui_view_doc(database, view, doc) {
  var target = $('#data');
  target.text("");
  
  target.append('<li><a  href="#/'+database+'/'+view+'" onclick="ui_list_docs(\''+database+'\',\''+view+'\');">..</a></li>');
  
  persistence_get_doc(database, view, doc, function(json) {
  	target.append(JSON.stringify(json));
  });
 
}





