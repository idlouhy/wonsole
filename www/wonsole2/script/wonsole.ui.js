var view_type = {
	list : {
		value : 0
	},
	detail : {
		value : 1
	}
};

var view = null;
var quiet = true;

function ui_init() {
	ui_list_databases();
}

function ui_list_databases() {
	$('#data').html('<ul id="list"></ul>');
	var target = $('#list');
	target.text("");

	function ui_list_databases_line(database) {
		target.append('<li><a  href="#/' + database + '" onclick="command_db(\'' + database + '\');">' + database + '</a></li>');
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
		target.append('<li><a  href="#/' + database + '/' + view + '" onclick="command_view(\'' + view + '\');">' + view + '</a></li>');
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

	target.append('<li><a  href="#/' + database + '" onclick="command_db(\'' + database + '\');">..</a></li>');

	function ui_list_docs_line(database, view, doc) {
		target.append('<li><a  href="#/' + database + '/' + doc + '" onclick="command_doc(\'' + doc + '\');">' + doc + '</a></li>');
	}

	persistence_list_docs(database, view, function(json) {
		docs = json;
		log(books);
		$.each(json, function(key, value) {
			ui_list_docs_line(database, view, key);
		});
	});
}

function ui_view_doc(database, view, doc) {
	var target = $('#data');
	target.text("");

	target.append('<li><a  href="#/' + database + '/' + view + '" onclick="command_view(\'' + view + '\');">..</a></li>');

	persistence_get_doc(database, view, doc, function(json) {
		doc = json;
		generateDetail(doc, json);
		//target.append(JSON.stringify(json));
	});

}

function ui_refresh() {
	if (view == view_type.list) {
		ui_docs(docs);
	}
	if (view == view_type.detail) {
		ui_doc(doc);
	} else {

	}
}

function ui_clear() {
  $('#console-output').text("");
}

function ui_log_toggle(on) {
  if (on != null) {
		if (on)
			$("#log").show();
		else
			$("#log").hide();
	} else {
		$("#log").toggle();
	}
}


function ui_docs(json_array) {
	ui_docs_list(json_array);
}

function ui_docs_list(json_array) {

	function ui_get_docs_list(json_array) {

		function ui_get_doc_preview(json) {

			function ui_get_doc_preview_attribute(key, value, first) {
				var r = "";
				
				if (key[0] == '_') {
					return "";
				}
				if (quiet && key != "title") {
					return "";
				}
				
				if (first == false) {
					r = ",<br />&nbsp;&nbsp;&nbsp;";
				}
				else {
					r = "";
				}
				
				if ( value instanceof Object) {
					return r + "<span style='color: black;'><strong>" + key + ":</strong></span>" + "Object";
				}
				else {
					return r + "<span style='color: black;'><strong>" + key + ":</strong></span>"  + JSON.stringify(value);
				}
			}

			var r = "";
			var first = true;
			$.each(json, function(key, value) {
				var attribute = ui_get_doc_preview_attribute(key, value, first);
				if (first && attribute.length > 0) {
					first = false;
				}
				r = r + attribute ;
			});

			return r;
		}

		var r = "";
		var i = 0;

		$.each(json_array, function(key, value) {
			r = r + "<li>";
			r = r + "<strong>" + i + ":</strong> ";
			r = r + "<a href=\"#\" onclick=\"command('doc "+i+"');\"> ";
			r = r + ui_get_doc_preview(value);
			r = r + "</a> ";
			r = r + "</li>";
			i++;
		});
		return r;
	}


	$('#data').html('<ul id="list"></ul>');
	$('#list').html(ui_get_docs_list(json_array));
}

function ui_doc(json) {
	var e = $('#data');
	e.html("<h3>Object</h3>");
	 
	//ui_get_doc_preview(json));
	function ui_doc_field(key, value, path, indent) {
		if (key[0] == '_') {
			return "";
		}
		if (value instanceof Object) {
			e.append(key+": <br/>");
			$.each(value, function(k, v) {
				ui_doc_field(k, v, path+"."+key, indent+"&nbsp;&nbsp;");
			});
		}
		else {
			e.append(indent);
			e.append(key);
			e.append(": ");
			e.append('<input id="'+path+'.'+key+'" style="width: '+value.length+'em;" value="'+value+'" oninput="'+path+'.'+key+'=event.target.value;" />');
			e.append("<br/>");
     }
	}
	$.each(json, function(key, value) {
		ui_doc_field(key, value, "doc", "&nbsp;&nbsp;");
	});
	
	
}

generateDetailR = function(key, value, indent) {
	var e = $("#data");

	e.append(indentSpace(indent));
	e.append('"' + key + '" : ');
	e.append('{<br/>');

	$.each(value, function(key, value) {
		if ( value instanceof Object) {
			generateDetailR(key, value, indent + 2);
		} else {
			e.append(generateJSONFormInput(key, value, indentSpace(indent + 2)));
		}
	});
	e.append(indentSpace(indent));
	e.append('}<br />');
};
generateDetail = function(key, json) {
	var e = $("#data");
	e.html("");

	e.append('<form id="detail">');
	generateDetailR(key, json, 0);

	e.append("</form>");
};
generateJSONFormInput = function(key, value, indentstr) {
	var disabled = false;
	if (key[0] == '_') {
		var r = indentstr + '"' + key + '" : "<input id="' + key + '" value="' + value + '" disabled="disabled" />"<br />';
	} else {
		var r = indentstr + '"' + key + '" : "<input id="' + key + '" value="' + value + '" oninput="book.' + key + ' = event.target.value; " />"<br />';
	}
	return r;
};