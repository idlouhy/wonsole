var history = []
var prompt = "wonsole2> "

var commands = {
  "cd" : "command_cd",	
}


var current = null;


function console_print(message) {
	$('#console').prepend("<p>"+message+"</p>");
	
	
}


function autocomplete_event() {
  if (current == null) {
  	$("#console-input" ).autocomplete({source: commands});
  }

}

function console_event_input(event) {
	autocomplete_event();
}	

function console_event_keypress(event) {
  if (event.keyCode == 13) { //enter
  	command(event.target.value);
  }
  else { //enter
  	//log(event.target.value);
  }

}


function console_event_click(event) {
  $('#console-input').focus();
}

