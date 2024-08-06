<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teachers List</title>
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

</body>
</html>
