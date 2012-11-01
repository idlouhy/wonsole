function ui_init() {
	ui_list_databases();
}

function ui_list_databases() {
  $('#data').html('<ul id="list"></ul>');
  var target = $('#list');
  target.text("");
  
  function ui_list_databases_line(database) {
  	target.append('<li><a  href="#/'+database+'" onclick="command_db(\''+database+'\');">'+database+'</a></li>');
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
  	target.append('<li><a  href="#/'+database+'/'+view+'" onclick="command_view(\''+view+'\');">'+view+'</a></li>');
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

  target.append('<li><a  href="#/'+database+'" onclick="command_db(\''+database+'\');">..</a></li>');

  function ui_list_docs_line(database, view, doc) {
  	target.append('<li><a  href="#/'+database+'/'+doc+'" onclick="command_doc(\''+doc+'\');">'+doc+'</a></li>');
  }

  persistence_list_docs(database, view, function(json) {
  	books = json;
  	log(books);
  	$.each(json, function(key, value) {
  	  ui_list_docs_line(database, view, key);
  	});
  });
}


function ui_view_doc(database, view, doc) {
  var target = $('#data');
  target.text("");
  
  target.append('<li><a  href="#/'+database+'/'+view+'" onclick="command_view(\''+view+'\');">..</a></li>');
  
  persistence_get_doc(database, view, doc, function(json) {
  	book = json;
  	generateDetail(doc, json);
  	//target.append(JSON.stringify(json));
  });
 
}


function ui_refresh() {
	generateDetail(null, book);
}

function ui_log_toggle(on) {
	if (on != null) {
	  if (on) $("#log").show();
	  else $("#log").hide();	
	}
	else {
	  $("#log").toggle();	
	}
}





/*****************************************************************************************************************/



indentSpace = function(n) {
  var s = "";
  for (var i=0; i<n; i++) {
    s = s + "&nbsp;";
  }
  return s;
}


generateDetailR = function(key, value, indent) {
  var e = $("#data");
  
  e.append(indentSpace(indent));
  e.append('"'+key+'" : ');
  e.append('{<br/>');
  
  $.each(value, function(key, value) {
    if (value instanceof Object) {
      generateDetailR(key, value, indent+2);
    }
    else {
      e.append(generateJSONFormInput(key, value, indentSpace(indent+2)));
    }
	  });
  e.append(indentSpace(indent));
  e.append('}<br />');

}

generateDetail = function(key, json) {
  var e = $("#data");
  e.html("");

  e.append('<form id="detail">');
  generateDetailR(key, json, 0);

  e.append("</form>");
}

inputOnInput = function(event) {
  w[event.target.id] = event.target.value;
  commit();
}

generateJSONFormInput = function(key, value, indentstr) {
  var disabled = false;
  if (key[0] == '_') {
    var r = indentstr + '"'+key+'" : "<input id="'+key+'" value="'+value+'" disabled="disabled" />"<br />';
  }
  else {
    var r = indentstr + '"'+key+'" : "<input id="'+key+'" value="'+value+'" oninput="book.'+key+' = event.target.value; " />"<br />';
  }
  return r;
}


generateListItem = function(json) {
  var e = $("#data");
  e.append(JSON.stringify(json));
}


generateList = function(json) {
  var e = $("#data");
  e.html("");
  //e.append(JSON.stringify(json));
//  e.append(JSON.stringify(json));
  $.each(json, function(key, value) {
       var o = value.value;
       e.append('<li><a  href="wonsole.html?'+o._id+'">'+o._id+'</a></li>');
  });
}
