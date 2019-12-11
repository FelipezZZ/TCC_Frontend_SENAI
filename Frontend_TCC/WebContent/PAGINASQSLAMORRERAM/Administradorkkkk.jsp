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
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navegação">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	 <a class="navbar-brand" href="Home.jsp" id="navbrand"><img src="imgs/anonimo.jpg" 
  		class="img-fluid" height="100" width="100" id="logo"></a>
	
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
      			<a class="nav-item" href="https://www.webmotors.com.br/">
      				<button class="btn btn-success my-2 my-sm-0" type="button">BAIXAR</button>      			      			
	    		</a>
	    	</ul>
	    </form>
	  </div>
	</nav>
	
<div class="container" style="width: 800px" id="divFormCadastro">
			<h3 style="text-align: center">Cadastre-se</h3>
			<br>
			<form method="post" action="#">
				1 
				<div class="input-group mb-3">
  <div class="input-group-prepend">
  </div>

</div>
				<input type="text" placeholder="Login" name="login" id="loginl" class="form-control">
				
				<!--<small id="emailHelp" class="form-text text-muted">Nós nunca compartilharemos esse e-mail com ninguém.</small>
				
				<br>
				
				<input type="text" placeholder="Telefone" name="telefone" id="tel" class="form-control">--> 
				<br> 
				<input type="password" placeholder="Senha" name="senha" id="senha" class="form-control">
				<br>
				<input type="password" placeholder="Confirmar Senha" name="csenha" id="csenha" class="form-control">
				<small id="emailHelp" class="form-text text-muted">Nunca compartilhe sua senha com ninguém.</small>
				
				<br>
				
				<!--<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Concordo com os Termos de Licença.</label>
				</div>-->
				
				<button type="submit" id="salvar" class="btn btn-lightblue">Salvar</button>
				
				<a class="btn btn-outline-info" role="button" href="Login.jsp" aria-pressed="true">Clique aqui se possuir uma conta...</a>
				
			</form>
		</div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>