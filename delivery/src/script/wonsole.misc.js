var w = new Object();


indentSpace = function(n) {
  var s = "";
  for (var i=0; i<n; i++) {
    s = s + "&nbsp;";
  }
  return s;
}


generateDetailR = function(key, value, indent) {
  var e = $("#data");
  
  e.append(indentSpace(indent));
  e.append('"'+key+'" : ');
  e.append('{<br/>');
  
  $.each(value, function(key, value) {
    if (value instanceof Object) {
      generateDetailR(key, value, indent+2);
    }
    else {
      e.append(generateJSONFormInput(key, value, indentSpace(indent+2)));
    }
	  });
  e.append(indentSpace(indent));
  e.append('}<br />');

}

generateDetail = function(key, json) {
  var e = $("#data");
  e.html("");

  e.append('<form id="detail">');
  generateDetailR(key, json, 0);

  e.append("</form>");
}

inputOnInput = function(event) {
  w[event.target.id] = event.target.value;
  commit();
}

generateJSONFormInput = function(key, value, indentstr) {
  var disabled = false;
  if (key[0] == '_') {
    var r = indentstr + '"'+key+'" : "<input id="'+key+'" value="'+value+'" disabled="disabled" />"<br />';
  }
  else {
    var r = indentstr + '"'+key+'" : "<input id="'+key+'" value="'+value+'" oninput="inputOnInput(event)" />"<br />';
  }
  return r;
}


generateListItem = function(json) {
  var e = $("#data");
  e.append(JSON.stringify(json));
}


generateList = function(json) {
  var e = $("#data");
  e.html("");
  //e.append(JSON.stringify(json));
//  e.append(JSON.stringify(json));
  $.each(json, function(key, value) {
       var o = value.value;
       e.append('<li><a  href="wonsole.html?'+o._id+'">'+o._id+'</a></li>');
  });
}


//{"id":"9e50827761bae06fd9b88fcd0c000219","key":"9e50827761bae06fd9b88fcd0c000219","value":{"_id":"9e50827761bae06fd9b88fcd0c000219","_rev":"4-f2ee0f9f21982d9296f8d321ab33341c","title":"Title","test":["test","data",{"id":1}]}}


commit = function() {
        $.ajax({
          type: "PUT",
          data: JSON.stringify(w),
          url: "/couchdb/library/"+w._id,
          dataType: 'json',
          cache: 'false',
          success: function(obj) {
//            alert(JSON.stringify(obj));
          },
          error: function(obj) {
            alert(JSON.stringify(obj));
          },
        });
        reload();
      }


reload = function() {
	
	/*

  var doc_id = window.location.search.substr(1);
  w = new Object();

  if (doc_id) {
    $.ajax({
      url: "/couchdb/library/"+doc_id,
      dataType: 'json',
      cache: 'false',
      success: function(data) {
         w = data;
         generateDetail(doc_id, data);
      },
    });
  }
  else {
    $.ajax({
      url: "/couchdb/library/_design/books/_view/books",
      dataType: 'json',
      cache: 'false',
      success: function(data) {
        generateList(data.rows);
      },
    });
  }
  */
 ui_init();
}
