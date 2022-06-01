<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/menu.css">

<body>
	<div>
		<form action="SearchContent" class="content" method="post">
			<div class="topnav">
				<input type="text" placeholder="Search..." name="search" value="${keysearch}">
				<button class="search-button" type="submit">
					<i class="fa fa-search"></i>
				</button>
			</div>
			<hr>
			<div class="menu">
				<i class="fa fa-table"></i>
				<p>
					<b><a href="viewcontent.tiles">View Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="menu">
				<i class="fas fa-edit"></i>
				<p>
					<b><a href="formcontent.tiles">Form Contents</a></b>
				</p>
			</div>
			<hr>
			<div class="menu">
				<i class="fas fa-video"></i>
				<p>
					<b><a href="http://localhost:8080/DoAnCuoiKy/views/videocall.jsp">Call Video</a></b>
				</p>
			</div>
				<hr>
			<div class="emplty"></div>
		</form>
	</div>
</body>