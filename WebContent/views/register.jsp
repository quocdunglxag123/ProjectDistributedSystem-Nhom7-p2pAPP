<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Register</title>
 <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/register.css">
 
</head>
<body>

		<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Register</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form action="Register" method="post" class="form-register" id="form-register" name="form" onsubmit="return validate();username_Verify();email_Verify(); password_Verify(); repassword_Verify()">
                    <fieldset>
                    
                    <p style="margin: 0;padding: 0;color: red;font-size: x-large">${message}</p><br />
                    
                    	<div class="form-group">
			    		    <input  class="form-control" placeholder="User name" name="username" type="text" maxlength="50" id="username" autocomplete="off">
			    		    <div id="username_error">Please fill you username</div>
			    		    <div id="username_error1">Username requires 10 characters</div>
			    		</div>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="email" maxlength="50" id="email" autocomplete="off">
			    		    <div id="email_error">Please fill you email</div>
			    		    <div id="email_error1">Email requires 10 characters</div>
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="" maxlength="50" id="password" autocomplete="off">
			    			<div id="password_error">Please fill you password</div>
			    			<div id="password_error1">Password requires 6 characters</div>
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Re Password" name="repassword" type="password" value="" maxlength="50" id="repassword" autocomplete="off">
			    			<div id="repassword_error">Please fill you repassword</div>
			    			<div id="repassword_error1">Repassword requires 6 characters</div>
			    		</div>
			    		<button onclick="validate();username_Verify();email_Verify(); password_Verify(); repassword_Verify() " 
			    		class="btn btn-lg btn-success btn-block" type="submit" id="twofuns"
			    		 >Register</button>
			    	</fieldset>
			    	<a href= "Login" color = "blue" type ="link">Click here to Login</a>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

 	 <script language="javascript"
		src="<%=request.getContextPath()%>/js/register.js"></script>
		
</body>
</html>