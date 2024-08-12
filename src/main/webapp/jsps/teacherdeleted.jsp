<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Successful Delete</title>
	<link rel="stylesheet" href="/TeachersWebApp/static/css/teacherdeleted.css">
	<script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>

	<div class="teacher">
		<h1 class="heading">Teacher with</h1>
		<p class="details">ID: ${deletedTeacher.id} <br>
			Last Name: ${deletedTeacher.lastName} <br>
			First Name: ${deletedTeacher.firstName} </p>
		<p>was successfully deleted!</p>
		
		<button class="returnButton" onclick="goToMainPage()">Return</button>
	</div>

</body>
</html>