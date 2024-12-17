<%@page import="com.ak.entity.Note"%>
<%@page import="com.ak.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="all_js_css.jsp"%>

</head>
<body>


	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>
		<br>
		
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = s.get(Note.class, noteId);
		s.close();
		%>


		<div class="container">
			<form action="UpdateServlet" method="post">
			
			<input value= "<%= note.getId() %>" name= "noteId" type="hidden">
			
				<div class="form-group">
					<label for="title">Note Title</label> <input name="title"
						type="text" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter Your Title Here"
						value="<%= note.getTitle() %>"
						required />
				</div>
				<div class="form-group">
					<label for="content">Note Content</label>
					<textarea name="content" id="content"
						placeholder="Enter Your Content Here" class="form-control"
						style="height: 230px" required><%= note.getContent() %></textarea>
				</div>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save Updated Note</button>
		</div>
		</form>
	</div>


</body>
</html>