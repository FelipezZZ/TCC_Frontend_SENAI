<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.net.URL"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/Css.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-none">
	  <a class="navbar-brand" href="Home.jsp">Help Chat</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navegação">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    </ul>
	    
	    <form class="form-inline my-2 my-lg-0">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    		<a class="nav-item">
       				<a class="nav-link" href="#">COMO FUNCIONA</a>
      			</a>
      			<a class="nav-item">
       				<a class="nav-link" href="Login.jsp">ENTRAR</a>
      			</a>
      			<a class="nav-item">
       				<a class="nav-link" href="Cadastro.jsp">CADASTRAR-SE</a>
      			</a>
      			<a class="nav-item" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR">
      				<button class="btn btn-outline-info my-2 my-sm-0" type="button">BAIXAR</button>      			      			
	    		</a>
	    	</ul>
	    </form>
	  </div>
	</nav>
	
			<div class="card" style="width: 20rem; margin: auto;">
			  <div class="card-body">
			  	<center>
			    	<h5 class="card-title">Login</h5>
			  	</center>
			  	
				<form method="post" action="#">
					<input type="text" name="login" class="form-control" placeholder="Digite seu usuário.." />
					<br> 
					<input type="password" name="senha" class="form-control" placeholder="Digite sua senha.." />
					<br> 
					<input class="btn btn-lightblue" type="submit" value="Entrar" />
					<a class="nav-item" href="Cadastro.jsp"><button class="btn btn-outline-info
      			my-2 my-sm-0" type="button">Cadastrar-se</button></a>
				</form>			  	
			  
			  </div>
			</div>	
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>