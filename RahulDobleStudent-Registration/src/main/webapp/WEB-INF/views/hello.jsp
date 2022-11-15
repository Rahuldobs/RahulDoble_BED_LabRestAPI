<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<style>
body {
	background-color: #cdffcd;
}

.container {
	text-align: center;
	padding-top: 20px;
}

.container h1 {
	background-color: #65a765;
	padding: 10px 10px 10px;
	margin: 0 300px 20px;
}
a{
padding: 0 20px;
font-size: large;

}
</style>

<title>Student Registration Portal</title>
</head>

<body>

	<div class="container">

		<br>
		<h1>Welcome to Student Registration Portal</h1>
		<hr>
		
		<a href="/StudentRegistration/users/add" class="btn btn-primary btn-sm mb-3"> Register </a>
		<a href="/StudentRegistration/login" class="btn btn-primary btn-sm mb-3"> Login </a>
		<a href="/StudentRegistration/roles/list" class="btn btn-primary btn-sm mb-3"> List Roles </a>
		
	</div>

</body>
</html>