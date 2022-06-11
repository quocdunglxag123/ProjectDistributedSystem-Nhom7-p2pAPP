<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/videocall.css">
<meta charset="ISO-8859-1">
<title>Video Call</title>
<style type="text/css">
h1.title {
	padding-top: 10px;
	color: yellow;
	text-align: center;
	background-color: #222e3c;
	height: 45px;
}

input#room-input {
	width: 70%;
	height: 20px;
}

div {
	padding-top: 10px;
}

button {
	width: 36%;
	height: 31px;
	background-color: lightgreen;
}

p {
	color: darkgreen;
}

video#local-video {
	margin-left: 50%;
	height: 39.5%;
	margin-top: 9.45%;
	background-color: #4ee6dabf;
	border: 1.5px solid black;
}
</style>
</head>

<body>
	<h1 class="title"
		style="padding-top: 10px; color: yellow; text-align: center;">GROUP
		7</h1>
	<p id="notification" hidden></p>
	<div class="entry-modal" id="entry-modal"
		style="margin-top: 5%; height: 152px; background-color: #4ee6dabf;">
		<p>Create or Join Meeting</p>
		<input id="room-input" class="room-input" placeholder="Enter Room ID">
		<div>
			<button onclick="createRoom()">Create Room</button>
			<button onclick="joinRoom()">Join Room</button>
		</div>
	</div>
	<div class="meet-area">
		<!-- Remote Video Element-->
		<video id="remote-video" style="background-color: #c5e6e4;"></video>

		<!-- Local Video Element-->
		<video muted id="local-video"
			style="height: 20%; margin-top: 5%; background-color: #4ee6dabf; border: 1.5px solid black; right: 3%;">
			<p>Local Video</p>
		</video>
		<div class="meet-controls-bar">
			<button style="width: 8%; position: absolute; margin-top: 4%;"
				 id="ScreenShare"
				onclick="startScreenShare()">Screen Share</button>
		</div>
	</div>
	<script language="javascript"
		src="<%=request.getContextPath()%>/js/videocallpeer.js"></script>
	<script language="javascript"
		src="<%=request.getContextPath()%>/js/videocall.js"></script>
</body>
</html>