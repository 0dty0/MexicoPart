<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Supervisor</title>
</head>
<body>

		<table border = "1">
			<tr>
				<th>ID Pregunta</th>
				<th>Pregunta</th>
				<th>Fecha</th>
				<th>Administrador</th>
			</tr>
			<c:forEach items="${requestScope.preguntas}" var = "tuple">
				<tr>
					<td>${tuple.id}</td>
					<td>${tuple.texto}</td>
					<td>${tuple.fecha}</td>
					<td>${tuple.idA}</td>
					<td>
						<form action="./editarpregunta" method="post">
							<input type = "hidden" value = "${tuple.id}" name="editar" id="editar">
							<input type="submit" value="Modificar" />
						</form>
					</td>
					<td>
						<form action="./eliminarpregunta" method="post">
							<input type ="hidden" value = "${tuple.id}">
							<input type="submit" value="Eliminar" />
						</form>
					</td>
				</tr>
			</c:forEach>
		</table><br>
		<form action = "./agregarPregunta.jsp" method = "post">
			<input type = "submit" value = "Agregar" />
		</form>
</body>
</html>
