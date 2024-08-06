<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teachers List</title>
<link rel="stylesheet" href="/TeachersWebApp/static/css/teachers.css">
</head>
<body>

<!-- 	<table>
	<tr>
		<th>ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Delete</th>
		
	</tr>
	

	<c:forEach var = "row" items = "${teachers}">

			<td> ${row.id} </td>
 			<td> ${row.firstName} </td>
			<td> ${row.lastName} </td> 
			<td><a href="/TeachersWebApp/TeacherDeleteController?id=${row.id}">Delete</a></td>

    </c:forEach>
	
	</table> -->
    <div class="center">
        <h1>Teachers List</h1>
        <c:if test="${not empty teachers}">
            <ul>
                <c:forEach var="teacher" items="${teachers}">
                    <li>ID: ${teacher.id}, Last Name: ${teacher.lastName}, First Name: ${teacher.firstName}</li>
                </c:forEach>
            </ul>
        </c:if>
        <c:if test="${empty teachers}">
            <p>No teachers found.</p>
        </c:if>

        <div class="bot-gap">
            <form method="POST" action="/TeachersWebApp/jsps/teachersmenu.jsp">
                <button class="returnButton" type="submit">Επιστροφή</button>
            </form>
        </div>
    </div>

</body>
</html>
