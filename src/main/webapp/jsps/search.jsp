<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/search.css">
    <script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
    
    <div class="top-btn">
        <button class="returnButton" onclick="goToMainPage()">Return to Menu</button>
    </div>


    <div class="extraMessage">
        <c:set var="message" value="${param.mes}" />

        <c:if test="${not empty message}">
            <h1>${message}</h1>
        </c:if>
        

    </div>

    <div class="center">
        <div class="searchById">
            
                <form method="GET" action="/TeachersWebApp/TeacherSearchByIdController">
                    <p>Search by ID</p>
                    <input name="searchInput1" type="text" class="search rounded" placeholder="Insert teacher's ID" required autofocus/>
                    <br><br>

                    <button class="search-btn rounded color-btn" type="submit">Search</button>
                </form>
        </div>
        <div class="searchByLastName">
            
                <form method="GET" action="/TeachersWebApp/TeacherSearchController">
                    <p>Search by Last Name</p>
                    <input name="searchInput2" type="text" class="search rounded" placeholder="Insert teacher's Last Name" autofocus/>
                    <br><br>

                    <button class="search-btn rounded color-btn" type="submit">Search</button>
                </form>
        </div>

        
    </div>

    

</body>
</html>