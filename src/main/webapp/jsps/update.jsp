
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
</head>
<body>

    <h1>Update Teacher Information</h1>
    <div class="enterDetails">
        <form method="POST" action="/TeachersWebApp/TeacherUpdateController">
           <!--  Hidden field to store the ID
            <input type="hidden" name="id" value="<%= id %>"/> -->
    
            <p>Enter new Last Name</p>
            <input name="lastName" type="text" class="insert rounded" placeholder="Last name" autofocus/><br><br>
    
            <p>Enter new First Name</p>
            <input name="firstName" type="text" class="insert rounded" placeholder="First name" autofocus/>
            <br><br>
            
            <button class="insert-btn" type="submit">Update</button>
        </form>
    </div>
    
    
</body>
</html>