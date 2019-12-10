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
	
	<p>
	
			<!-- NAVS EDITAR PERFIL -->
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-9">
			
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" id="perfil-tab" data-toggle="tab" href="#perfil" role="tab" aria-controls="perfil" aria-selected="true">
							Perfil
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="hd-tab" data-toggle="tab" href="#hd" role="tab" aria-controls="hd" aria-selected="true">
							Horários/Descrição
						</a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="perfil" role="tabpanel" aria-labelledby="perfil-tab">
						<hr>
						<form class="form" action="#" method="post">
							<div class="form-group">
                       			<div class="col-xs-6">
                              		<label for="first_name"><h4>First name</h4></label>
                              		<input type="text" class="form-control" name="first_name" id="first_name" placeholder="first name" title="enter your first name if any.">
                          		</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Last name</h4></label>
                              		<input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                         	 	</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Last name</h4></label>
                              		<input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                         	 	</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Last name</h4></label>
                              		<input type="text" class="form-control" name="last_name" id="last_name" placeholder="last name" title="enter your last name if any.">
                         	 	</div>
                      		</div>
						</form>
					</div>
				 	
				 	<div class="tab-pane fade" id="hd" role="tabpanel" aria-labelledby="hd-tab">
				 		HD
				 	</div>
				</div>
				
			</div>
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>