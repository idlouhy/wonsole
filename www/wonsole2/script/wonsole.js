var database = null; 
var view = null;

var book = null;
var books = null;

var commands = {
  "db" : {"callback" : "command_db"},
  "view" : {"callback" : "command_view"},
  "doc" : {"callback" : "command_doc"},
  "log" : {"callback" : "command_log"},
  "commit" : {"callback" : "command_commit"},
}


function command_db(input) {
	console_print("db "+input);
	database = input; log("database = '"+input+"'");
	ui_list_views(input); log("ui_list_views('"+input+"')");	
}

function command_view(input) {
	console_print("view "+input);
	view = input; log("view = '"+input+"'");
	ui_list_docs(database, input); log("ui_list_docs('"+database+"', '"+input+"')");	
}

function command_doc(input) {
	console_print("doc "+input);
	doc = input;
	ui_view_doc(database, view, input);	
}

function command_log(input) {
	console_print("log");
	ui_log_toggle();
}

function log(message) {
	$('#log').append('<div>'+message+'</div>');
}

function command_commit(input) {
	console_print("commit");
	log("persistence_commit();");
	persistence_commit();
}

function command_eval(input) {
	console_print(input);
	console_print(eval(input));
	
}

function command(input) {
	
	var command_part = input.split(' ')[0];
	var argument_part = input.split(' ')[1];
	
	$('#console-input').val(""); //FIX
	
	if (commands[command_part] != null) {
	  window[commands[command_part].callback](argument_part);	
	}
	else {
	  console_print("undefined command "+command_part+" -> JS eval");
	  command_eval(input);	
	}
	
}



