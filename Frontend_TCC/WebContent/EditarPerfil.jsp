<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Perfil</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/CssFelipe.css">
</head>
<body>

	<%
	
		String sair = request.getParameter("sair");
		if (sair != null) {
			request.getSession().invalidate();
			request.getSession().setAttribute("email", null);
			response.sendRedirect("LoginCadastro.jsp");
		}
	
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
		<a class="navbar-brand" href="Home.jsp">
			<img src="imgs/Logo.png" class="img-fluid" height="75" width="75" id="logo">
  		</a>
	
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Alterna navegação">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>
	  	
	  	<div class="collapse navbar-collapse" id="navbarToggler">
	    
	    	<%
				if (request.getSession().getAttribute("email") != null) {
			%>
			
				<form method="post" action="#">
					<input type="hidden" name="sair" value="sair">
					<div class="dropdown">
						<button class="btn btn-danger dropdown-toggle" type="button"
							id="btUser" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">
							<img src="imgs/user-icon.png" class="img-fluid" height="27"
								width="27">
						</button>
						<div class="dropdown-menu" aria-labelledby="btUser"> 
							<a class="dropdown-item" href="EditarPerfil.jsp">Editar Perfil</a>
							<input type="submit" class="dropdown-item" value="sair" />
						</div>
					</div>
				</form>			
			
			<%
				}
			%>
	    
	    	<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    	</ul>
	    
	    	<form class="form-inline my-2 my-lg-0">
			    <ul class="navbar-nav mr-auto mt-lg-0">
			    	<a class="nav-item">
			    		<button type="button" class="btn btn-link" data-toggle="modal" data-target="#ModalInfo" id="navItem">COMO FUNCIONA</button>
			    	</a>	    	
	    
	    	<%
    			if (request.getSession().getAttribute("email") == null) {			
    		%>			
						<a class="nav-item">
		       				<a class="nav-link" href="LoginCadastro.jsp" id="navItem">ENTRAR</a>
		      			</a>
    		<%
    			}
    		%>
	  
	      			<a class="nav-item">
	      				<a class="nav-link" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR" id="navItem">BAIXAR</a>		      			
		    		</a>
					
		    	</ul>
		    </form>
	    
		</div>
	</nav>

		<!-- MODAL INFO -->
	<div class="modal fade" id="ModalInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalScrollableTitle">Como Funciona</h5>
				</div>
				<div class="modal-body">
				FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
				</div>
			</div>
		</div>
	</div>
	
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-9">
			
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" href="#">Ativo</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Link</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Link</a>
					</li>
					<li class="nav-item">
						<a class="nav-link disabled" href="#">Desativado</a>
					</li>
				</ul>
			
			</div>
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>