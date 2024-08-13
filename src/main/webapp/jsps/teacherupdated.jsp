<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful Update</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/teacherupdated.css">
    <script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
	
	<div class="teacher">
		<h1 class="heading">Teacher was successfully updated!</h1>
		<h1>New Teacher</h1>
		<p class="details">ID: ${updatedTeacher.id} <br>
			Last Name: ${updatedTeacher.lastName} <br>
			First Name: ${updatedTeacher.firstName} 
		</p>
			
		<button class="returnButton" onclick="goToMainPage()">Return</button>
		
	</div>

</body>
</html>