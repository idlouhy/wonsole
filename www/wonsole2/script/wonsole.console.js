var history = []
var prompt = "wonsole2> "
var input = "";




//var autocomplete_commands_cache = [];


var current = null;


function console_print(message) {
	$('#console').prepend("<p>"+message+"</p>");
	
	
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
	//autocomplete_event();
}	

function console_event_keypress(event) {
  if (event.keyCode == 13) { //enter
  	command(input);
  }
}


function console_event_click(event) {
  $('#console-input').focus();
  //autocomplete_event();
}

