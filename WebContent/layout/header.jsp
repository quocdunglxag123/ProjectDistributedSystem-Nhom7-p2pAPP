<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/header.css">

<meta charset="ISO-8859-1">
<title>Header</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body style="margin: 0">
	<div class="container-Header">
		<div class="row">
			<div class="logocms">
				<h1 class ="cms">GROUP 7</h1>
			</div>
			<div class="dropdown">
				<button class="dropbtn">
					<h1 class="people">
						<i class="fas fa-user"></i> <i class="fas fa-sort-down"></i>
					</h1>
				</button>
				<div class="dropdown-menu">
					<a href="editprofile.tiles"><i class="fas fa-user"></i>User Profile</a>
					<hr />
					<a href="Logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
				</div>
			</div>
		</div>
		<hr style="margin: 0" />
	</div>
</body>
</html>
