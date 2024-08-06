<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />
</head>
<body>
	<nav class="navbar bg-primary">
		<label for="Brand" class="navbar-brand"> Student Management
			System </label>
	</nav>
	<br />
	<br />

	<div class="container">
		<form action="StudentServlet" method="get">
			<input type="hidden" name="command" value="ADD" /> 
			<div class="row">
          <div class="col-3">
            <label for="id">ID:</label>
          </div>
          <div class="col-3">
            <input
              type="text"
              id="id"
              name="id"
              class="form-control"
              required
            />
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-3">
            <label for="name">Name:</label>
          </div>
          <div class="col-3">
            <input
              type="text"
              id="name"
              name="name"
              class="form-control"
              required
            />
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-3">
            <label for="gender">Gender:</label>
          </div>
          <div class="col-3">
            <select id="gender" name="gender" class="form-control" required>
              <option value="">Select Gender</option>
              <option value="male">Male</option>
              <option value="female">Female</option>
              <option value="other">Other</option>
            </select>
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-3">
            <label for="email">Email:</label>
          </div>
          <div class="col-3">
            <input
              type="email"
              id="email"
              name="email"
              class="form-control"
              required
            />
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-3">
            <label for="phone">Phone:</label>
          </div>
          <div class="col-3">
            <input
              type="tel"
              id="phone"
              name="phone"
              class="form-control"
              required
            />
          </div>
        </div>
        <br />
        <div class="row mt-3">
          <div class="col-6">
            <input type="submit" value="Submit" class="btn btn-primary" />
          </div>
        </div>
		</form>
		
		<br>
		<a href="StudentServlet">Back to list</a>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>