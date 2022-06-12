<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Chatbox</title>
<script type="text/javascript">
	var websocket = new WebSocket(
			"ws://localhost:8080/ProjectDistributedSystem-Nhom7-p2pAPP/ChatroomServerEndpoint");
	websocket.onmessage = function processMessage(message) {
		var jsonData = JSON.parse(message.data);
		if (jsonData.message != null)
			messagesTextArea.value += jsonData.message + "\n";
	}
	function sendMessage() {
		websocket.send(messageText.value);
		messageText.value = "";
	}
</script>
<style type="text/css">
textarea#messagesTextArea {
    width: 800px;
    margin-left: 20%;
    margin-top: 5%;
}

input#messageText {
    margin-left: 20%;
    width: 700px;
    height: 40px;
}

input[type="button"] {
    width: 98px;
    height: 40px;
    background-color: #30c42b;
    color: white;
    margin-left: 2px;
}

section {
    float: left;
    width: 84%;
    height: 637px;
    /* border: 1px solid lightgrey; */
    padding: 10px;
    min-height: 573px;
    background-color: powderblue;
}
</style>
</head>
<body>
	<textarea id="messagesTextArea" readonly="readonly" rows="10" cols="45"></textarea>
	<br />
	<input type="text" id="messageText" placeholder="Message" size="50" /><input type="button" value="Send" onclick="sendMessage()" /><br />
</body>
</html>