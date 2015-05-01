<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose> 
		<c:when test="${sessionScope.logged != null && sessionScope.logged.rol == 1}">
			<c:redirect url = "./supervisor.jsp" />
		</c:when>
		<c:when test = "${sessionScope.logged != null && sessionScope.logged.rol == 2}">
			<c:redirect url = "./administrador.jsp" />
		</c:when>
		<c:otherwise>
			<html>
			<head>
			<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
			<meta name="generator" content="Bootply" />
			<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
			<script src="js/login.min.js"></script>
			<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
			<link href="css/login.min.css" rel="stylesheet">
			<link href="css/styleslogin.css" rel="stylesheet">

		   		
			<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  				<div class="modal-dialog">
  					<div class="modal-content">
      					<div class="modal-header">
          					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          						<h1 class="text-center">Login</h1>
     							 </div>
      						<div class="modal-body">
          					<form action="./login" method="post" class="form col-md-12 center-block">
           					<div class="form-group">
              				<input type="text" class="form-control input-lg" placeholder="usuari" size="20" id="usuario" name="usuario">
					</div>
            		<div class="form-group">
              		<input type="password" class="form-control input-lg" placeholder="password" size="20" id="usuario" name="password">
            		</div>
            		<div class="form-group">
             		<button class="btn btn-primary btn-lg btn-block">Entrar</button>
             		</div>
          			</form>
     				</div>
      				<div class="modal-footer">
          			<div class="col-md-12">
          			<button class="btn" data-dismiss="modal" aria-hidden="true"><a href="index.html">Cancel</a></button>
		  			</div>	
      			</div>
  			</div>
 		 </div>
	</div>
</body>
			</html>
		</c:otherwise>
		
</c:choose>
