var database = null; 

var doc = null;
var docs = null;

var commands = {
  "db" : {"callback" : "command_db"},
  "cd" : {"callback" : "command_db"},
  "log" : {"callback" : "command_log"},
  "commit" : {"callback" : "command_commit"},
  "refresh" : {"callback" : "command_refresh"},
  "print" : {"callback" : "command_print"},
  "foreach" : {"callback" : "command_foreach"},
  "docs" : {"callback" : "command_docs"},
  "doc" : {"callback" : "command_doc"},
}


function wonsole_init() {
	ui_init();
	//ui_log_toggle(false);
}


function command_db(input) {
	console_print_command("db "+input);
	database = input; log("database = '"+input+"'");
	view = null;
	//ui_list_views(input); log("ui_list_views('"+input+"')");
	persistence_list_docs(input, function(json_array) {
	  docs = json_array;
	  ui_docs_list(docs);	
	});
}

function command_print(input) {
	console_print_command("print "+input);
	console_print_output(eval('JSON.stringify('+input+')'));
}


function command_foreach(input1, input2, input3) {
  console_print_command("foreach "+input1+" "+input2+" "+input3);   
    
  for (var i=0; i < window[input1].length; i++) {
   	log(window[input1][i][input2]+input3);
    window[input1][i][input2] = eval(window[input1][i][input2]+input3); 
  };
  
  //foreach books book.price = book.price + 10
}


function command_refresh() {
  console_print_command("refresh");
  ui_refresh();
}

function command_log(input) {
	console_print_command("log");
	ui_log_toggle();
}


function command_docs(input) {
	console_print_command("docs");
	view = view_type.list;
	ui_docs(docs);
}

function command_doc(input) {
	console_print_command("doc");
	doc = docs[input];
	view = view_type.detail;
	ui_doc(doc);
	//ui_doc_preview(book);
	
}



function log(message) {
	$('#log').append('<div>'+message+'</div>');
}

function command_commit(input) {
	console_print_command("commit");
	log("persistence_commit();");
	persistence_commit();
}

function command_eval(input) {
	console_print_command(input);
	console_print_output(eval(input));
}

function command(input) {
	
	history.push(input);
	
	var command_part = input.split(' ')[0];
	var argument1_part = input.split(' ')[1];
	var argument2_part = input.split(' ')[2];
	var argument3_part = input.split(' ')[3];
		
	$('#console-input').val(""); 
	
	if (commands[command_part] != null) {
	  window[commands[command_part].callback](argument1_part, argument2_part, argument3_part);	
	}
	else {
	  command_eval(input);	
	}
	
	ui_refresh();
}



