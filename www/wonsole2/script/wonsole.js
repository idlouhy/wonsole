var database = null;

var doc = null;
var docs = null;
var docs_removed = [];

var commands_queue = [];

var commands = {
  "db" : {"callback" : "command_db"},
  "cd" : {"callback" : "command_db"},
  "log" : {"callback" : "command_log"},
  "commit" : {"callback" : "command_commit"},
  "rollback" : {"callback" : "command_rollback"},
  "refresh" : {"callback" : "command_refresh"},
  "print" : {"callback" : "command_print"},
  "filter" : {"callback" : "command_filter"},
  "foreach" : {"callback" : "command_foreach"},
  "seteach" : {"callback" : "command_seteach"},
  "docs" : {"callback" : "command_docs"},
  "doc" : {"callback" : "command_doc"},
  "quiet" : {"callback" : "command_quiet"},
  "add" : {"callback" : "command_add"},
  "remove" : {"callback" : "command_remove"},
  "clear" : {"callback" : "command_clear"},
  "script" : {"callback" : "command_script"},
  "notify" : {"callback" : "command_notify"},
  "help" : {"callback" : "command_help"},
  "view" : {"callback" : "command_view"},
};



var demo_pre = [
  'print "Welcome to Wonsole!"',
  'alert("Welcome to Wonsole!")',
  'log',
  'log',
  'db authors',
  'db books',
  'clear',
  'print docs',
  'clear',
  'quiet',
  'doc 0',
  'print doc',
  'print docs[0]',
  'docs',
  'clear',
  'doc 0',
  'doc.note = "New!"',
  'docs',
  'add {"title" : "New Book"}',
  'remove 4',
  'clear',
  'seteach docs author "Ivo Dlouhy"',
  'doc 0',
  'docs',
  'clear',
  'db authors',
  'var a = docs[0]',
  'db books',
  'add {"title" : "New Book1"}',
  'add {"title" : "New Book2"}',
  'clear',
  'filter docs title New',
  'seteach docs author a',
  'seteach docs price 100',
  'foreach docs price=price*2',  
]

var demo1 = [
  'var pbl = {}',
  'pbl.title = "Frederik"',
  'pbl.address = "Norway"',
  'print pbl',
  'db books',
  'quiet',
  'filter docs language no',
  'seteach docs publisher pbl',  
]

var demo2 = [
  'db books',
  'quiet',
  'var cmd = ["for (var item in docs) { if (docs[item].stock < 3) alert(docs[item].title+\\" is out of stock!\\"); }"]',
  'cmd',
  'clear',
  'var sale = ["foreach docs if (tags.indexOf(\\"onsale\\") > -1) alert(title+\\" is on sale!\\");"]',
  'sale',
]

var demo3 = [
  'db books',
  'quiet',
  'add {"title":"Brand", "year":1865, tags:["post1800","boring", "priest"], stock: 0, price: 150, "language":"no"}',
  'add {"title":"An Enemy of the People", "year":1865, tags:["post1800","boring", "enemy"], stock: 0, price: 160, "language":"no"}',  
]


var check_stock = [
  'for (var item in docs) { if (docs[item].stock < 3) alert(docs[item].title+" is out of stock!"); }'
]


var check_sale = [
  'foreach docs if (tags.indexOf("onsale") > -1) alert(title+" is on sale!");'
]

var avgprice = ["var sum=0", "foreach docs sum=sum+price", "print sum/docs.length"]



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

function command_view(input) {
	console_print_command("view "+input);
	view = view_type.detail;
	eval('doc = '+input); 
	eval('ui_doc('+input+', "'+input+'"');
}


function command_seteach(input) {
  var array_name = input.split(' ') [0];
  var atribute_name = input.split(' ')[1];
  var code = input.split(' ').slice(2).join(' ');
    
  console_print_command("seteach "+input);
    
  for (var i=0; i < window[array_name].length; i++) {
    //log(window[input1][i][input2]+input3);
    window[array_name][i][atribute_name] = eval(code);
  }
  
  ui_refresh();
}


function command_foreach(input) {
  var array_name = input.split(' ') [0];
  var code = input.split(' ').slice(1).join(' ');
    
  var length = 0;
  eval("length = "+array_name+".length");

  console_print_command("foreach "+input);
  for (var i=0; i < length; i++) {
    //log(window[input1][i][input2]+input3);
    eval("(function(){with (this){"+code+"}}).call("+array_name+"["+i+"])");

  }
  
  ui_refresh();
}


function command_filter(input) {
  var array_name = input.split(' ') [0];
  var atribute_name = input.split(' ')[1];
  var code = input.split(' ').slice(2).join(' ');
    
  console_print_command("filter "+input);
  
  var result = [];
    
  for (var i=0; i < window[array_name].length; i++) {
    if (typeof window[array_name][i][atribute_name] == "string" && window[array_name][i][atribute_name].search(code) > -1) {
   		result.push(window[array_name][i]);
   	}
   	if (typeof window[array_name][i][atribute_name] == "number" && window[array_name][i][atribute_name] == (code - 0)) {
   		result.push(window[array_name][i]);
   	}
  }
  window[array_name] = result;
  
  ui_refresh();
}


function command_script(input) {
  var array_name = input.split(' ') [0];
  var step = input.split(' ')[1];
  
  if (step) {
  	step = true;
  }
  else {
  	step = false;
  }
  
  
  for (var i=0; i < window[array_name].length; i++) {
  	
  	if (step) {
      commands_queue.push(window[array_name][i]);
    }
    else {
  	  command(window[array_name][i]);
    }
  }
  
  
  
}

function command_clear() {
  console_print_command("clear");
  ui_clear();
}

function command_help() {
  console_print_command("help");
  console_print_notification("<a href='http://wonsole.dlouho.net'>wonsole.dlouho.net</a>");
}



function command_notify(input) {
  console_print_command("notify "+input);
  console_print_notification(input);
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
	ui_doc(doc, input);	
}

function log(message) {
	$('#log').append('<div>'+message+'</div>');
}

function command_add(input) {
	console_print_command("add " +input);
	eval("docs.push("+input+")");
	ui_refresh();
}


function command_remove(input) {
	console_print_command("remove" +input);

	if ((input - 0) == input) {
	  docs_removed.push(docs[(input - 0)]);
	  docs.splice((input - 0), 1);	
	}
	else {
		eval("docs_removed.push("+input+")");
	}
	//send api call
	ui_refresh();	
}


function command_commit(input) {
	console_print_command("commit");
	log("persistence_commit();");
	persistence_commit();
	
	//d": "0", "_rev": "1-62657917", "_deleted": true},
}

function command_eval(input) {
	console_print_command(input);
	$.globalEval(input);
	//console_print_output(out);
}

function command_quiet() {
	console_print_command("quiet");
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
	  }
	  else if (window[input]) {
	  	command_script(input);
	  }
	  else {
        log("eval");
	    command_eval(input);
      }
    }
	catch (error) {
		console_print_error(error.message);
	}
		
	
	
	//see if there are some commands in queue and prepare them
	if (commands_queue.length > 0) {
	  console_print_notification("command in queue: "+commands_queue[0]);
	  console_set_command(commands_queue[0]);
	  commands_queue.splice(0, 1);	
	}
	
	ui_refresh();

}




