<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login&Cadastro</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/CssFelipe.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
	
		<a class="navbar-brand" href="Home.jsp">
			<img src="imgs/Logo.png" class="img-fluid" height="75" width="75" id="logo">
  		</a>
	
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Alterna navegação">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>
	  	
	  	<div class="collapse navbar-collapse" id="navbarToggler">
	    
	    	<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    	</ul>
	    
		    <form class="form-inline my-2 my-lg-0">
		    	<ul class="navbar-nav mr-auto mt-lg-0">
		    	
		    		<a class="nav-item">
		    			<button type="button" class="btn btn-link" data-toggle="modal" data-target="#ModalInfo" id="navItem">COMO FUNCIONA</button>
		    		</a>
					
					<a class="nav-item">
	       				<a class="nav-link" href="Login.jsp" id="navItem">ENTRAR</a>
	      			</a>
	      		
	      			
	      			<a class="nav-item">
	      				<a class="nav-link" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR" id="navItem">BAIXAR</a>		      			
		    		</a>
					
		    	</ul>
		    </form>
	    
		</div>
	  
	</nav>
	
	<div class="card" style="width: 30rem; margin: auto; margin-top: 4%; padding:2%">
		<div class="container" id="containerTeste">
			  <div class="row">
			  	<div class="main">
			  		<h3>Entre, ou <a href="#" data-toggle="modal" style="color: #6bbfb6" data-target="#exampleModalLong">Cadastre-se </a> </h3>
			  		
			  		<div class="login-or">
	        			<hr class="hr-or">
      				</div>
			  		
			  		<form role="form">
			  			<div class="form-group">
			  				<label for="inputUsernameEmail">Email :</label>
         	 				<input type="text" class="form-control "placeholder="Digite seu email.." id="inputUsernameEmail">
			  			</div>
			  			
			  			<div class="form-group">
          					<label for="inputPassword">Senha :</label>
          					<input type="password" class="form-control" placeholder="Digite sua senha.."  id="inputPassword">
        				</div>
        				
        				<button type="submit" id="btentrar" class="btn btn btn-primary">Entrar</button>
			  		</form>
			  	</div>
			  </div>
		</div>
	</div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>