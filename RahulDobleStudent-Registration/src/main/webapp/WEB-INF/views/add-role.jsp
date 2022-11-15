<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
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
	text-align: left;
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


button {
	align-content: center;
}

input[type=reset] {
	margin-left: 75px;
}

</style>

<title>Save Role</title>
</head>

<body>
<h1>STUDENT REGISTRATION PORTAL</h1>
	<div class="container">

		<br>
		<h3>Role Directory</h3>
		<hr>

	

		<form action="/StudentRegistration/roles/save" method="POST">

			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${Role.id}" />

			 <label
				for="name">Enter Role :</label>
				<input type="text" name="name" value="${Role.name}"
				placeholder="Role Name">
		

			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>

		<hr>
		<a href="/StudentRegistration/roles/list"
			class="btn btn-primary btn-sm mb-3"> Back to Roles List </a>
	</div>
</body>

</html>










