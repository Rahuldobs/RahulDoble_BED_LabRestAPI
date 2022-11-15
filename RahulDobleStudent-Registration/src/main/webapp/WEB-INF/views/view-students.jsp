<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

<title>View Students</title>
</head>

<body>

	<div class="container">

		<br>
		<h3>Students Details</h3>
		<hr>
		
	    <div class="card">
	      <div class="container">
	        <h2>${Students.firstName} ${Students.lastName}</h2>
	        <p>Course: ${Students.course}</p>
	         <p>Country: ${Students.country}</p>
	      </div>
	    </div>

		<hr>
		<a href="/StudentRegistration/students/list" class="btn btn-primary btn-sm mb-3" >Back to Students List</a>
	</div>
</body>

</html>










