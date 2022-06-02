var title = document.forms['formcontent']['title'];
	var brief = document.forms['formcontent']['brief'];
	var content = document.forms['formcontent']['content'];

	var title_error = document.getElementById('title_error');
	var brief_error = document.getElementById('brief_error');
	var content_error = document.getElementById('content_error');
	
	title.addEventListener('textInput', title_Verify);
	brief.addEventListener('textInput', brief_Verify);
	content.addEventListener('textInput', content_Verify);
	
	function validate(){
		if(title.value.length == "") {
			document.getElementById('title').style.border = "3px solid red";
			title_error.style.display ="block";
			}
	}
	
	function title_Verify(){
		if(title.value.length >= 1) {
			document.getElementById('title').style.border = "3px solid #47a447";
			title_error.style.display ="none";
			title_error1.style.display ="none";
			return true;
		}
	}
	function brief_Verify(){
		if(brief.value.length >= 1) {
			document.getElementById('brief').style.border = "3px solid #47a447";
			brief_error.style.display ="none";
			brief_error1.style.display ="none";
			return true;
		}
	}
	function content_Verify(){
		if(content.value.length >= 1) {
			document.getElementById('content').style.border = "3px solid #47a447";
			content_error.style.display ="none";
			content_error1.style.display ="none";
			return true;
		}
	}
	