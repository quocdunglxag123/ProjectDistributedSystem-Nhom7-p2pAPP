function getValue(id){
 	    return document.getElementById(id).value.trim();
 	}
 	 	
 	function showError(key, mess){
 	    document.getElementById(key + '_error').innerHTML = mess;
 	}
 	function validate()
 	{
 	    var flag = true;
 	    //firstname
 	    var firstname = getValue('firstname');
 	    if (firstname  == '' || firstname.length < 3){
 	        flag = false;
 	       	document.getElementById('firstname').style.border = "2px solid red";
 	        showError('firstname', 'Please fill in the field');
 	    }
 	    else{
 	    	document.getElementById('firstname').style.border = "1px solid lightgrey";
 	    	showError('firstname', '');
 	    }
 	    //lastname
 	   var lastname = getValue('lastname');
	    if (lastname  == '' || lastname.length < 3){
	        flag = false;
	       	document.getElementById('lastname').style.border = "2px solid red";
	        showError('lastname', 'Please fill in the field');
	    }
	    else{
	    	document.getElementById('lastname').style.border = "1px solid lightgrey";
	    	showError('lastname', '');
	    }
	    //mail
	    var email = getValue('email');
        var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
        if(email  == ''){
        	flag = false;
            showError('email', 'Please fill in the field');
        }
        else if(email != ''){
        	if (!mailformat.test(email)){
                flag = false;
                showError('email', 'Please fill in the correct email format');
            }
        	 else{
            	 showError('email', '');
            }
        }
       
	    //phone
        var phone = getValue('phone');
        if(phone  == ''|| phone.length < 9){
        	flag = false;
        	document.getElementById('phone').style.border = "2px solid red";
            showError('phone', 'Please fill in the field');
        }
        else if(phone != ''){
        	if (phone != '' &&  !/^[0-9]{10}/.test(phone)){
                flag = false;
                document.getElementById('phone').style.border = "2px solid red";
                showError('phone', 'Invalid phone number');
            }
        	else{
        	 document.getElementById('phone').style.border = "1px solid lightgrey";
           	 showError('phone', '');
           } 
        }
   
 	    return flag;
 	}