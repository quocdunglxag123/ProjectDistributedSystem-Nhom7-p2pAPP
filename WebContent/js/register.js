var username = document.forms['form']['username'];
	var email = document.forms['form']['email'];
	var password = document.forms['form']['password'];
	var repassword = document.forms['form']['repassword'];

	var username_error = document.getElementById('username_error');
	var email_error = document.getElementById('email_error');
	var password_error = document.getElementById('password_error');
	var repassword_error = document.getElementById('repassword_error');
	
	username.addEventListener('textInput', username_Verify);
	email.addEventListener('textInput', email_Verify);
	password.addEventListener('textInput', password_Verify);
	repassword.addEventListener('textInput', repassword_Verify);
	
	function validate(){
		if(username.value.length =="") {
			document.getElementById('username').style.border = "2px solid red";
			username_error.style.display ="block";
			username_error1.style.display ="none";
			username.focus();
			return false;
		}else if(username.value.length < 10){
			document.getElementById('username').style.border = "2px solid red";
			username_error.style.display ="none";
			username_error1.style.display ="block";
			username.focus();
			return false;
		}
		if(email.value.length =="") {
			document.getElementById('email').style.border = "2px solid red";
			email_error.style.display ="block";
			email_error1.style.display ="none";
			email.focus();
			return false;
		}else if(email.value.length < 10){
			document.getElementById('email').style.border = "2px solid red";
			email_error.style.display ="none";
			email_error1.style.display ="block";
			email.focus();
			return false;
		}
		if(password.value.length =="") {
			document.getElementById('password').style.border = "2px solid red";
			password_error.style.display ="block";
			password_error1.style.display ="none";
			password.focus();
			return false;
		}else if(password.value.length < 10){
			document.getElementById('password').style.border = "2px solid red";
			password_error.style.display ="none";
			password_error1.style.display ="block";
			password.focus();
			return false;
		}
		if(repassword.value.length =="") {
			document.getElementById('repassword').style.border = "2px solid red";
			repassword_error.style.display ="block";
			repassword_error1.style.display ="none";
			password.focus();
			return false;
		}else if(password.value.length < 10){
			document.getElementById('password').style.border = "2px solid red";
			repassword_error.style.display ="none";
			repassword_error1.style.display ="block";
			password.focus();
			return false;
		}
	}
	
	function username_Verify(){
		if(username.value.length >= 10) {
			document.getElementById('username').style.border = "2px solid green";
			username_error.style.display ="none";
			username_error1.style.display ="none";
			return true;
		}
	}
	function email_Verify(){
		if(email.value.length >= 10) {
			document.getElementById('email').style.border = "2px solid green";
			email_error.style.display ="none";
			email_error1.style.display ="none";
			return true;
		}
	}
	function password_Verify(){
		if(password.value.length >= 6) {
			document.getElementById('password').style.border = "2px solid green";
			password_error.style.display ="none";
			password_error1.style.display ="none";
			return true;
		}
	}
	function repassword_Verify(){
		if(repassword.value.length >= 6) {
			document.getElementById('repassword').style.border = "2px solid green";
			repassword_error.style.display ="none";
			repassword_error1.style.display ="none";
			return true;
		}
	}