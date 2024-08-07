<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/css/search.css">
</head>
<body>
    <div class="center">
        
        <div class="content">
            <div class="searchById">
                <p>Search by ID</p>
                    <form method="GET" action="/TeachersWebApp/TeacherSearchController">
                        <input name="searchInput" type="text" class="search rounded" placeholder="Insert teacher's ID" autofocus/>
                        <br><br>

                        <button class="search-btn rounded color-btn" type="submit">Search</button>
                    </form>
            </div>
            <div class="searchByLastName">
                <p>Search by Last Name</p>
                <form method="GET" action="/TeachersWebApp/TeacherSearchController">
                    <input name="searchInput" type="text" class="search rounded" placeholder="Insert teacher's Last Name" autofocus/>
                    <br><br>

                    <button class="search-btn rounded color-btn" type="submit">Search</button>
                </form>
            </div>

        </div>






    </div>
</body>
</html>