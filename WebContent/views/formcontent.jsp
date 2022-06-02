<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="overflow: hidden;">
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/formcontent.css">
<meta charset="ISO-8859-1">
<title>View Contents</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
</head>
<body>	
	<div class="add-content">
		<c:if test="${id == null}">
			<h1 class="text-add-content">Add Content</h1>
		</c:if>
		<c:if test="${id != null}">
			<h1 class="text-add-content">Edit Content</h1>
		</c:if>
		<hr />
		<p style="margin-left: 30px; padding: 0; color: green">${message}</p>
		<c:if test="${id == null}">
		
			<form class="form-add-content" id="addcontent" name="formcontent" onsubmit ="return validate(); title_Verify(); brief_Verify(); content_Verify()" action="AddContent" method="post">
				<p class="header">Content Form Elements</p>

				<div class="row-form" style="padding: 0%;">
					<label for="title">Title</label> 
					<input type="text" class="textbox" id="title" name="title" autocomplete="off" placeholder="Enter the title" maxlength="200" >
					<div id="title_error">Please fill your title</div>
			    	<div id="title_error1">Title Requires More Than 1 Character</div>
				</div>

				<div class="row-form" style="padding: 0%;">
					<label for="brief">Brief</label>
					<textarea name="brief" id="brief" rows="3" autocomplete="off" class="textbox" maxlength="150" style="width: 90%;height: 59px;"></textarea>
					<div id="brief_error">Please fill your brief</div>
			    	<div id="brief_error1">Brief Requires More Than 1 Character</div>
				</div>

				<div class="row-form" style="padding: 0%;">
					<label for="content">Content</label>
					<textarea name="content" id="content" rows="9" autocomplete="off" class="textbox" maxlength="1000" style="width: 90%;;height: 59px;"></textarea>
					<div id="content_error">Please fill your content</div>
			    	<div id="content_error1">Content Requires More Than 1 Character</div>
				</div>
				<div class="row-form" style="padding: 0%;">					
					<span style="display: flex;">
						<p>Public Note:</p>
						<span style="display: flex;">
  							<input type="radio" id="privatecontent" name="publiccontent" value=0>
  							<label style="margin-top: 20%;margin-left: 20%;" for="privatecontent">Private</label>
  						</span>
  						<span style="display: flex;margin-left: 5%;">
  							<input type="radio" id="publiccontent" name="publiccontent" value=1>
  							<label style="margin-top: 20%;margin-left: 20%;" for="publiccontent">Public</label>
  						</span>
  					</span>
  				</div>
				<div class="row-form" style="padding: 0%;">					
					<button class="button" type="submit" name="submit" onclick = "validate(); title_Verify(); brief_Verify(); content_Verify()" value="submit">Submit Button</button>
					<button class="button" type="reset">Reset Button</button>
				</div>
			</form>
		</c:if>
		<c:if test="${id != null}">
			<form class="form-add-content" id="addcontent" name="formcontent" onsubmit ="return validate(); title_Verify(); brief_Verify(); content_Verify()" action="EditContent" method="post">

				<p class="header">Content Form Elements</p>

				<div class="row-form" style="padding: 0%;">
					<input type="hidden" name="id" value="<c:out value='${id}' />" /> 
					<label for="title">Title</label> 
					<input type="text" class="textbox" id="title" name="title" autocomplete="off" placeholder="Enter the title" value="${title}" maxlength="200">
					<div id="title_error">Please fill your title</div>
			    	<div id="title_error1">Title Requires More Than 1 Character</div>
				</div>

				<div class="row-form" style="padding: 0%;">
					<label for="brief">Brief</label>
					<textarea name="brief" id="brief" rows="3" class="textbox" autocomplete="off" maxlength="150">${brief}</textarea>
					<div id="brief_error">Please fill your brief</div>
			    	<div id="brief_error1">Brief Requires More Than 1 Character</div>
				</div>

				<div class="row-form" style="padding: 0%;">
					<label for="content">Content</label>
					<textarea name="content" id="content" rows="9" class="textbox" autocomplete="off" maxlength="1000">${content}</textarea>
					<div id="content_error">Please fill your content</div>
			    	<div id="content_error1">Content Requires More Than 1 Character</div>
				</div>
				<div class="row-form" style="padding: 0%;">					
					<span style="display: flex;">
						<p>Public Note:</p>
						<span style="display: flex;">
  							<input type="radio" id="privatecontent" name="publiccontent" value=0>
  							<label style="margin-top: 20%;margin-left: 20%;" for="privatecontent">Private</label>
  						</span>
  						<span style="display: flex;margin-left: 5%;">
  							<input type="radio" id="publiccontent" name="publiccontent" value=1>
  							<label style="margin-top: 20%;margin-left: 20%;" for="publiccontent">Public</label>
  						</span>
  					</span>
  				</div>
				<div class="row-form" style="padding: 0%;">					
					<button class="button" type="submit" name="submit" onclick = "validate(); title_Verify(); brief_Verify(); content_Verify()" value="submit">Submit Button</button>
					<button class="button" type="reset">Reset Button</button>
				</div>
			</form>
		</c:if>
	</div>
 <script language="javascript"
		src="<%=request.getContextPath()%>/js/formcontent.js"></script>

</body>
</html>
	