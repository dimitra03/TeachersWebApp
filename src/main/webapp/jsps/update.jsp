<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <script src="/TeachersWebApp/static/js/functions.js"></script>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/update.css">
</head>
<body>

<div class="top-btn">
    <button class="returnButton" onclick="goToMainPage()">Return to Menu</button>
</div>

<div class="center">
    <h1>Update Teacher</h1>
    <div class="enterDetails">
        
        <form method="POST" action="/TeachersWebApp/TeacherUpdateController">
            <input type="hidden" name="id" value="${param.id}" />
            <input type="hidden" name="lastName" id="lastName" value="${param.lastName}"/>
            <input type="hidden" name="firstName" id="firstName" value="${param.firstName}"/>
            <br>
            <p>New Last Name:</p>
            <input name="newLastName" type="text" class="insertNew" placeholder="Insert new last name" autofocus/><br><br>
            <p>New First Name:</p>
            <input name="newFirstName" type="text" class="insertNew" placeholder="Insert new first name" autofocus/><br><br>
            
            <button class="update-btn" type="submit">Update</button>
        </form>
    </div>
    
</div>  
</body>
</html>