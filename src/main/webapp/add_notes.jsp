<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1>Please Fill Your Notes Details</h1>
	</div>
	
	
	<!-- This is at form -->
	<div class="container">
	<form action="saveNoteServlet" method="post">
  <div class="form-group">
    <label for="title">Note Title</label>
    <input name="title" type="text" class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Your Title Here" required/>
  </div>
  <div class="form-group">
    <label for="content">Note Content</label>
    <textarea name="content" id="content" placeholder="Enter Your Content Here" class="form-control" style="height:230px" required></textarea>
  </div>
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary" >Add</button>
  </div>
</form>

</body>
</html>