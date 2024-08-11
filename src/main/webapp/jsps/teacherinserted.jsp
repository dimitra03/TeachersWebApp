<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Successful Insert</title>
	<link rel="stylesheet" href="/TeachersWebApp/static/css/teacherinserted.css">
	<script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
	<div class="teacher">
		<h1 class="heading">Teacher with</h1>
			<p class="details">ID: ${insertedTeacher.id} <br>
			Last Name: ${insertedTeacher.lastName} <br>
			First Name: ${insertedTeacher.firstName} </p>
			<p>was successfully inserted!</p>
		
		<button class="returnButton" onclick="goToMainPage()">Return</button>
	</div>
</body>
</html>