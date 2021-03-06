<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Login</title>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/login.css">
	
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<script type="text/javascript" src="jquery-1.4.2.js"></script>
</head>
<body>

	<div class="container">
		<div class="row vertical-offset-100">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Member Login</h3>
					</div>
					<div class="panel-body">
						<p style="margin: 0; padding: 0; color: red">${message}</p>
						<form action="#" method="post" class="form-login" id="form-login"
							name="form"
							onsubmit="return validate();email_Verify();password_Verify()">
							<fieldset>
								<div class="form-group">
									<input class="form-control" placeholder="E-mail" name="email"
										id="email" type="email" maxlength="50" autocomplete="off">
									<div id="email_error">Please fill you email</div>
									<div id="email_error1">Email requires 10 characters</div>
								</div>
								<div class="form-group">
									<input class="form-control" placeholder="Password"
										autocomplete="off" id="password" name="password"
										type="password" value="" maxlength="50">
									<div id="password_error">Please fill you password</div>
									<div id="password_error1">Password requires 6 characters</div>
								</div>
								<div class="form-check form-check-inline mb-0">
									<input type="checkbox" class="form-check-input" name="remember"
										id="remember" /> <label for="remember">Remember</label>
								</div>
								<button onclick="validate();email_Verify();password_Verify()"
									class="btn btn-lg btn-success btn-block" type="submit"
									id="twofuns">Login</button>

							</fieldset>
							<a href="Register" style="color: blue" type="link">Click here
								to Register</a>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	 <script language="javascript"
		src="<%=request.getContextPath()%>/js/login.js"></script>

</body>
</html>