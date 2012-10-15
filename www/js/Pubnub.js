function initPubnub() {
	PUBNUB.subscribe({
        channel: "books",
        restore: true,
        callback: pubnubCallback,
        disconnect: pubnubDisconnect,
        reconnect: pubnubReconnect,
        connect: pubnubConnect
    });
}

function pubnubDisconnect() {
	$("#pubnubIndicator").html('<span style="color: red;" >PN</span>');
}

function pubnubConnect() {
	$("#pubnubIndicator").html('<span style="color: green;" >PN</span>');
}

function pubnubRefresh() {
	$("#pubnubIndicator").html('<span style="color: orange;" >PN</span>');
	setInterval(function() { $("#pubnubIndicator").html('<span style="color: green;" >PN</span>'); }, 2000);
	
	PUBNUB.publish({
		channel : "books",
		message : "client connected"
	});
}

function pubnubReconnect() {
	$("#pubnubIndicator").html('<span style="color: gray;" >PN</span>');
}

function pubnubCallback() {
	LIB.retrieveObjects();
}
   