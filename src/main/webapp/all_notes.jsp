<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="com.ak.entity.Note"%>
<%@page import="com.ak.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: All Notes</title>

<%@include file="all_js_css.jsp"%>


</head>
<body>

	<div class="container-fluid">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>

		<div class="row">

			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Criteria criteria = s.createCriteria(Note.class);
				List<Note> list = criteria.list();
				for (Note note : list) {
				%>

				<div class="card mt-3 p-2">
					<img class="card-img-top" style="max-width:70px" src="img/pencil.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle() %></h5>
						<p class="card-text">
						<%= note.getContent() %>
						</p>
						
						<p><b class="text-primary"><%=note.getAddedDate() %></b></p>
						
						<div class="container text-center">
						<a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Update</a>
						<a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger">Delete</a>
					</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>

</body>
</html>