<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teachers List</title>
<link rel="stylesheet" href="/TeachersWebApp/static/css/teachers.css">
<script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Last Name</th>
            <th>First Name</th>
            <th>Delete</th>
            <th>Update</th>
        </tr>
    
        <c:forEach var="row" items="${teachers}">
            <tr>
                <td>${row.id}</td>
                <td>${row.lastName}</td>
                <td>${row.firstName}</td>
                <td><a href="/TeachersWebApp/TeacherDeleteController?id=${row.id}&lastName=${row.lastName}&firstName=${row.firstName}"
                    onclick="return confirmDelete('${row.firstName} ${row.lastName}');">Delete</a></td>
                <td><a href="/TeachersWebApp/jsps/update.jsp?id=${row.id}&lastName=${row.lastName}&firstName=${row.firstName}">Update</a></td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>
