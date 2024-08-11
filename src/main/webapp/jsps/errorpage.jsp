<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/errorpage.css">
    <script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
    <h1>Error</h1>
    <div class="showError">
        <c:choose>
            <c:when test="${error == 'idmissing'}">
                <p>This ID does not exist. Please provide a valid ID to search for.</p>
            </c:when>
            <c:when test="${error == 'idexists'}">
                <p>This ID already exists. Please provide another ID.</p>
            </c:when>
            <c:when test="${error == 'lastNameNotExists'}">
                <p>This teacher does not exist. Please provide another last name.</p>
            </c:when>
            

            <c:otherwise>
                <p>An unexpected error occurred. Please try again.</p>
            </c:otherwise>    
        </c:choose>
        <button class="returnButton" onclick="goToMainPage()">Return</button>

    </div>
    
    

</body>
</html>