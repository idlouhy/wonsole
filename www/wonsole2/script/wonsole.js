



function command(command) {
  var out = eval(command);
  console_print(out);
  log('command: '+command);
}


function command_cd() {
	
}


function log(message) {
	$('#log').append('<p>'+message+'</p>');
}


