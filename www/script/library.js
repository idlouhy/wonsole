$(document).ready(function() {

	$.ajax({
		type : "GET",
		url : "http://netlight.dlouho.net:9002/library/_design/books/_view/books",
		success : function(response) {
			alert(response["total_rows"]);
			
		},
		dataType : "json"
	});



});


/*
{
total_rows: 1,
offset: 0,
rows: [
{
id: "9e50827761bae06fd9b88fcd0c000219",
key: "9e50827761bae06fd9b88fcd0c000219",
value: {
_id: "9e50827761bae06fd9b88fcd0c000219",
_rev: "2-ffefcff5b8e3d8c8cae66d9ce50d1555",
title: "Title"
}
}
]
}


*/