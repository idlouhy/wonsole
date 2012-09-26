var pubnub = require('pubnub');

//console.log("Write a message and press enter to send it to channel books:")

pn = pubnub.init({
  publish_key: "pub-a47de1d5-fb27-49e6-877e-ce4198efee32",
  subscribe_key: "sub-5d0d7b0c-06fe-11e2-897a-b30c99bcb2fd"
});

pn.subscribe({
    channel  : "books",
    callback : function(message) {
        console.log( "->", message );
    }
});

var stdin = process.openStdin();
stdin.on( 'data', function(chunk) {
    pn.publish({
        channel : "books",
        message : ''+chunk
    });
});


