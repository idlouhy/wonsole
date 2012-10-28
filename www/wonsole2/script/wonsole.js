var database = ""; 
var view = "";

var commands = {
  "db" : {"callback" : "command_db"},
  /*"cd" : "command_db",
  "view" : "command_view",
  "exec" : "command_exec",
  "e" : "command_exec",
  */
}



function command(input) {
	
	var c = input.split(' ')[0];
	
	var arg = input.split(' ')[1];
	log(c+"<<");
	log(arg+"<<");
	
	window[commands[c].callback]();
}


function command_db(input) {
	console_print(input);
	ui_list_views(input);	
}

function command_view(input) {
	
}

function command_eval(input) {
	
}


function log(message) {
	$('#log').append('<p>'+message+'</p>');
}


