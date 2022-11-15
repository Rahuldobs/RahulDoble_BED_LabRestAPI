<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Student List</title>
<style>
body {
	background-color: #cdffcd;
}

.container {
	text-align: center;
	padding-top: 20px;
}

.addButton {
	text-align: left;
}

a {
	margin-left: 15px;
}

.container h1 {
	background-color: #65a765;
	padding: 10px 10px 10px;
	margin: 0 0 20px;
}
</style>

</head>

<body>

	<div class="container">

		<h1>STUDENT REGISTRAION POTAL</h1>
		<hr>

		<!--for search option and add student button -->
		<div class="addButton">

			<form action="/StudentRegistration/students/search"
				class="form-inline">
				<input type="text" name="firstName" placeholder="Search Name...."
					class="form-control-sm ml-5 mr-2 mb-3" />
				<button type="submit" class="btn btn-primary btn-sm mb-3">Search</button>
				<a href="/StudentRegistration/students/add"
					class="btn btn-primary btn-sm mb-3">Add Student</a> <a
					href="/StudentRegistration/students/list"
					class="btn btn-primary btn-sm mb-3">Lists</a> <a
					href="/StudentRegistration/logout"
					class="btn btn-primary btn-sm mb-3"> Logout </a>

			</form>

			<!-- for list table contains all details -->
		</div>

		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Student Id</th>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach items="${Students}" var="tempStudent">

					<tr>
						<td><c:out value="${tempStudent.id}" /></td>
						<td><c:out value="${tempStudent.firstName}" /></td>
						<td><c:out value="${tempStudent.lastName}" /></td>
						<td><c:out value="${tempStudent.course}" /></td>
						<td><c:out value="${tempStudent.country}" /></td>

						<!-- for update and delete button -->

						<td><a
							href="/StudentRegistration/students/update?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm">Update</a> <a
							href="/StudentRegistration/students/delete?studentId=${tempStudent.id}"
							class="btn btn-danger btn-sm"
							onclick="if(!(confirm('Are you want to delete this entry?'))) return false">Delete></a>
							<a
							href="/StudentRegistration/students/view?studentId=${tempStudent.id}"
							class="btn btn-info btn-sm">View</a>

						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>