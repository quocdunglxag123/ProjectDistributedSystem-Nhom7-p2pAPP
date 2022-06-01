<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html style="overflow: hidden;">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/editprofile.css">
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>

	<div class="container-editprofile">
		<div class="row-main">
			<h1 class="title" style="margin-top: 2%;">Edit Profile</h1>
			<hr class="hrprofile" />
			<div class="edt_table">
				<div class="head_edt">
					<p>Profile form elements</p>
				</div>
			</div>
			<form action="EditProfile" method="POST" class="form" id="form"
				name="formedit">
				<div class="body_edt">
					<i style="margin: 0; padding: 0; color: green"
						class="alert alert-light text-danger p-0">${message}</i> <input
						type="hidden" class="text" id="idmember" name="idmember" required
						value="<c:out value='${showmember.id}' />">
					
					<div class="editform">
						<label for="firstname">First Name</label> <input  maxlength="30" class="text"
							id="firstname" name="firstname"
							placeholder="Enter the first name"
							value="<c:out value='${showmember.firstname}' />">
							 <br><span style="color: red;" id="firstname_error"></span>
					</div>

					<div class="editform">
						<label for="lastname">Last Name</label> <input maxlength="30" class="text"
							id="lastname" name="lastname" placeholder="Enter the last name"
							value="<c:out value='${showmember.lastname}' />">
							<br><span style="color: red;" id="lastname_error"></span>
					</div>

					<div class="editform">
						<label for="email">Email</label> <input class="textemail"
							type="email" id="email" name="email"
							placeholder="your_email@example.com" 
							value="<c:out value='${showmember.email}' />"
							style="border-style: none;"></input>
							<br><span style="color: red;" id="email_error"></span>
					</div>

					<div class="editform">
						<label for="phone">Phone</label> <input maxlength="13" class="text" id="phone"
							name="phone" placeholder="Enter your phone number" 
							value="<c:out value='${showmember.phone}' />">
							<br><span style="color: red;" id="phone_error"></span>
					</div>

					<div class="editform">
						<label for="description">Description</label>
						<textarea class="textdes" id="description" name="description"
							rows="5" cols="7" maxlength="1000"><c:out
								value='${showmember.description}' /></textarea>
								<br><span style="color: red;" id="description_error"></span>
					</div>
					<button class="btn_submit" type="submit" onclick="return validate()" id="btn">Submit Button</button>
					<button class="btn_reset" type="reset" >Reset
						Button</button>
				</div>
			</form>
		</div>
	</div>
 <script language="javascript"
		src="<%=request.getContextPath()%>/js/editprofile.js"></script>

</body>
</html>