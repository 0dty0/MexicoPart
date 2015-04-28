<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Supervisor</title>
</head>
<body>

	<c:choose> 
		<c:when test="${sessionScope.logged != null && sessionScope.logged.rol == 1}">
			Login de Supervisor exitoso
		</c:when>
		<c:otherwise>
			<c:redirect url="./index.html" />
		</c:otherwise>
		
	</c:choose>
	<a href="./logout">log out</a>
	<form action="./administradores" method="post">
		<input type="submit" value="Manejar Administradores" />
	</form>
		

</body>
</html>
