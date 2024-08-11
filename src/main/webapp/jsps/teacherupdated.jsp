<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<%@ page pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Επιτυχής Ενημέρωση</title>
    <link rel="stylesheet" href="/TeachersWebApp/static/teacherupdated.css">
    <script src="/TeachersWebApp/static/js/functions.js"></script>
</head>
<body>
	<p>	Teacher successfully updated! with: ${updatedTeacher.id} <br>
	 	${updatedTeacher.lastName} <br>
	 	${updatedTeacher.firstName} <br>
	</p>
	
	<a href="/TeachersWebApp/index.html">Επιστροφή</a>

</body>
</html>