//$(document).ready(function() {

init = function() {
	
	
	$.ajax({
    url: "http://localhost:5984/library/_design/books/_view/books",
    dataType: 'json',
    success: function(data) {
//$("#list").append("success");
        //$.each(data, function(key, val) {
            
            $("#list").append(data);
        //});
    },
    
    complete: function(data) {
       // $.each(data, function(key, val) {
          //  $("#list").append('complete');
            //$("#list").append('key: ' + key + ' Val: ' +  val + '<br />');
            
       // });
    },
    error: function(error) { }
});

	
	//var data = $.ajax("http://localhost:5984/library/_design/books/_view/books");
    
 
}
	
