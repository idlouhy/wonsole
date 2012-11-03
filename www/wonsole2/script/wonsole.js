var database = null;

var doc = null;
var docs = null;

var commands = {
  "db" : {"callback" : "command_db"},
  "cd" : {"callback" : "command_db"},
  "log" : {"callback" : "command_log"},
  "commit" : {"callback" : "command_commit"},
  "rollback" : {"callback" : "command_rollback"},
  "refresh" : {"callback" : "command_refresh"},
  "print" : {"callback" : "command_print"},
  "foreach" : {"callback" : "command_seteach"},
  "seteach" : {"callback" : "command_seteach"},
  "applyeach" : {"callback" : "command_applyeach"},
  "docs" : {"callback" : "command_docs"},
  "doc" : {"callback" : "command_doc"},
  "quiet" : {"callback" : "command_quiet"},
}


function wonsole_init() {
	ui_init();
	ui_log_toggle(false);
}


function command_db(input) {
	console_print_command("db "+input);
	database = input; log("database = '"+input+"'");
	view = view_type.list;
	//ui_list_views(input); log("ui_list_views('"+input+"')");
	persistence_list_docs(input, function(json_array) {
	  docs = json_array;
	  ui_docs_list(docs);	
	});
}

function command_rollback(input) {
	console_print_command("rollback");
	view = view_type.list;
	persistence_list_docs(database, function(json_array) {
	  docs = json_array;
	  ui_docs_list(docs);	
	});
}

function command_print(input) {
	console_print_command("print "+input);
	console_print_output(eval('JSON.stringify('+input+')'));
}


function command_seteach(input) {
  var array_name = input.split(' ') [0];
  var atribute_name = input.split(' ')[1];
  var code = input.split(' ').slice(2).join(' ');
    
  console_print_command("seteach "+input);   
    
  for (var i=0; i < window[array_name].length; i++) {
   	//log(window[input1][i][input2]+input3);
    window[array_name][i][atribute_name] = eval(code); 
  };
  
  ui_refresh();
}

function command_applyeach(input) {
  var array_name = input.split(' ') [0];
  var atribute_name = input.split(' ')[1];
  var code = input.split(' ').slice(2).join(' ');
    
  console_print_command("foreach "+input);   
    
  for (var i=0; i < window[array_name].length; i++) {
   	//log(window[input1][i][input2]+input3);
    window[array_name][i][atribute_name] = eval(window[array_name][i][atribute_name]+" "+code); 
  };
  
  ui_refresh();
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
	console_print_command("doc "+input);
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
	$.globalEval(input);
	//console_print_output(out);
}

function command_quiet() {
	quiet = !quiet;
}

function command(input) {
	
	history.push(input);
	
	var command_part = input.split(' ')[0];
	var argument_part = input.split(' ').slice(1).join(' ');	
			
	$('#console-input').val(""); 
	
	
	try {
	
	if (commands[command_part] != null) {
		window[commands[command_part].callback](argument_part);
	  window[commands[command_part].callback](argument_part);	
	}
	else {
	  log("eval");
		command_eval(input);
	}
	
	}
	catch (error) {
		console_print_error(error.message);
	}
		
	ui_refresh();
}



