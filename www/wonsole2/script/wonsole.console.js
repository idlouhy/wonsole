var history = [];
var prompt = "wonsole2> ";
var input = "";

//var autocomplete_commands_cache = [];

var current = null;


function console_print(input) {
  $('#console-output').append("<div>"+input+"</div>");
}



function console_print_output(message) {
  $('#console-output').append("<div>"+message+"</div>");
}


function console_print_command(message) {
  $('#console-output').append("<div style=\"color: white\">"+prompt+message+"</div>");	
}

function console_print_error(message) {
  $('#console-output').append("<div style=\"color: red\">"+message+"</div>");	
}

function console_print_notification(message) {
  $('#console-output').append("<div style=\"color: green\">"+message+"</div>");	
}



function console_set_command(message) {
  $('#console-input').val(message); 	
}

function console_execute_command() {
  command(input);	
}


/*
function autocomplete_path() {
	log("autocomplete path");
		var databases = [];
		$.each(persistance_cache_databases, function(key, value) {
			databases.push("/"+value);
		$("#console-input").autocomplete({source: databases});	
	});
  	
}

function autocomplete_commands() {
	log("autocomplete commands");
    $.each(commands, function(key, value) {
	  autocomplete_commands_cache.push(key);
    });
	$("#console-input").autocomplete({source: autocomplete_commands_cache});	
}


function autocomplete_event() {
	log("autocomplete event "+input+"<<");
	if (input[input.length] == ' ') {
	  autocomplete_path();
	}
	else {
	  autocomplete_commands();
	}
}
*/

function console_event_input(event) {
	input = event.target.value;
}

function console_event_keypress(event) {
  if (event.keyCode == 13) { //enter
  	input = event.target.value;
  	console_execute_command();
  }
}

function console_event_keydown(event) {
	if (event.keyCode == 38) { //keyup
	  console_set_command(history.pop());	
	}
}


function console_event_click(event) {
  $('#console-input').focus();
  //autocomplete_event();
}

