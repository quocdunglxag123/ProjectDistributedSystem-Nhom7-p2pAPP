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
</head>

<body>
	<h1 class="title">Project-Nhom7</h1>
	<p id="notification" hidden></p>
	<div class="entry-modal" id="entry-modal">
		<p>Create or Join Meeting</p>
		<input id="room-input" class="room-input" placeholder="Enter Room ID">
		<div>
			<button onclick="createRoom()">Create Room</button>
			<button onclick="joinRoom()">Join Room</button>
		</div>
	</div>
	<div class="meet-area">
		<!-- Remote Video Element-->
		<video id="remote-video"></video>

		<!-- Local Video Element-->
		<video muted id="local-video"
			style="margin-left: 80%; height: 30%; margin-top: 3%;"></video>
		<div class="meet-controls-bar">
			<button style="position: absolute; margin-top: 4%;"
				class="button-sharescreen" id="ScreenShare" onclick="startScreenShare()">Screen
				Share</button>
		</div>
	</div>
	<script language="javascript"
		src="<%=request.getContextPath()%>/js/videocallpeer.js"></script>
	<script language="javascript"
		src="<%=request.getContextPath()%>/js/videocall.js"></script>
</body>
</html>