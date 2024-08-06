<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import = "java.util.* ,com.Student.jdbc.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>

	<% List<SettersGetters> theStudent = (List<SettersGetters>)request.getAttribute("Student_list"); %>
	
	<nav class="navbar bg-primary">
		<label for="Brand" class="navbar-brand"> Student Management
			System </label>
	</nav>
	<br>
	<br>
	<div class="container">
	<div class="row">
        <div class="col-9">
          <h1>Students Data</h1>
        </div>
        <div class="col-3">
          <input type="button" value="Add Student" onclick="window.location.href='Add.jsp'">
        </div>
      </div>
		<table class="table table-bordered">
			<thead class="thead-dark ">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Email</th>
					<th>Phone No</th>
					<th>Action</th>
				</tr>
			</thead>
			<% for (SettersGetters STD : theStudent ) { %>
			<tr>
			<td><%=STD.getId()%></td>
			<td><%=STD.getName()%></td>
			<td><%=STD.getGender()%></td>
			<td><%=STD.getEmail()%></td>
			<td><%=STD.getPhone()%></td>	
				<td>
					<button class="btn btn-warning">
						<i class="bi bi-pencil-fill"></i>
					</button>
					<button class="btn btn-danger">
						<i class="bi bi-trash3-fill"></i>
					</button>
				</td>
			</tr>
			<% }%>
		</table>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
