<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Teacher</title>
    <script src="/TeachersWebApp/static/js/functions.js"></script>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/insert.css">
</head>
<body>

    <div class="top-btn">
        <button class="returnButton" onclick="goToMainPage()">Return to Menu</button>
    </div>

    <div class="center">
        <div class="enterDetails">
            
            <form method="POST" action="/TeachersWebApp/TeacherInsertController">
                <p>Enter teacher's ID</p>
                <input name="id" type="text" class="insert rounded" placeholder="Id" required autofocus/><br><br> 
                <p>Enter teacher's Last Name</p>
                <input name="lastName" type="text" class="insert rounded" placeholder="Last name" required autofocus/><br><br>
                <p>Enter teacher's First Name</p>
                <input name="firstName" type="text" class="insert rounded" placeholder="First name" required autofocus/><br><br>
                <button class="insert-btn" type="submit">Insert</button>
            </form>

        </div>
    </div>
    
</body>
</html>