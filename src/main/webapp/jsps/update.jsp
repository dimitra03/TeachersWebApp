<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/update.css">
</head>
<body>

    <h1>Update Teacher Information</h1>
    <div class="enterDetails">
        <form method="POST" action="/TeachersWebApp/TeacherUpdateController">
            <input type="hidden" name="id" value="${param.id}" />
            <input type="hidden" name="lastName" id="lastName" value="${param.lastName}"/>
            <input type="hidden" name="firstName" id="firstName" value="${param.firstName}"/>
            <br>
            <label>New Last Name:</label>
            <input name="newLastName" type="text" class="insertNew" placeholder="Insert new last name" autofocus/>
            <label>New First Name:</label>
            <input name="newFirstName" type="text" class="insertNew" placeholder="Insert new first name" autofocus/>
            <br>
            
            <input type="submit" value="Update" />
        </form>
    </div>
    
    
</body>
</html>