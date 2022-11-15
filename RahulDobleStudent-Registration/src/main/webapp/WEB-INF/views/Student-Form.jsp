<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1 shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<title>Student Forms</title>
<style>
body {
	background-color: #cdffcd;
}

.container {
	max-width: 50%;
	margin-top: 10px;
	border-radius: 10px;
	border-style: groove;
	padding: 20px;
}

label {
	padding: 0 20px;
	display: inline-block;
	width: 200px;
	text-align: right;
	display: inline-block;
}

h1 {
	text-align: center;
	background-color: #65a765;
	padding: 10px 10px 10px;
	margin: 20px 200px 20px;
}

input[type=text] {
	width: 50%;
	padding: 8px 12px;
	margin: 8px;
	box-sizing: border-box;
}
#country {
	width: 50%;
	padding: 8px 12px;
	margin: 8px;
	box-sizing: border-box;
}
button {
	margin-left: 200px;
}

input[type=reset] {
	margin-left: 75px;
}
</style>
</head>

<body>
	<!-- for for add new student -->
	<h1>STUDENT REGISTRATION PORTAL</h1>
	<div class="container">
		<h3>Form</h3>
		<hr>
		<form action="/StudentRegistration/students/save" method="post">

			<input type="hidden" id="id" name="id" value="${Students.id}" />
			 <label
				for="name">FirstName:</label>
				 <input type="text" id="firstName"
				name="firstName" value="${Students.firstName}"
				placeholder="Enter FirstName" />
				<br> <br> <br>
			<label for="name">LastName:</label> 
			<input type="text" id="lastName"
				name="lastName" value="${Students.lastName}"
				placeholder="Enter LastName" />
				<br> <br> <br>
			 <label
				for="course">Course:</label>
				 <input type="text" id="course"
				name="course" value="${Students.course}" placeholder="Enter Course" />
			<br> <br> <br> 
			<label for="country"
				value="${Students.country}">Country: </label>
				 <select id="country"
				name="country">
				<option value="India">India</option>
				<option value="Canada">Canada</option>
				<option value="NewZealand">NewZealand</option>
				<option value="USA">USA</option>
			</select>
			 <br> <br> <br>

			<button type="submit" class="btn btn-info col-2">Save</button>
			<input type="reset" class="btn btn-info col-2" value="reset entry" />
		</form>

		<a href="/StudentRegistration/students/list">Back to Students List</a>
	</div>
</body>
</html>