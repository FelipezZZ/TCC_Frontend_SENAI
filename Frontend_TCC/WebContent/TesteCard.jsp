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
			
			<div class="card" style="width: 20rem; margin: auto;">
			  <div class="card-body">
			    <h5 class="card-title">Cadastro</h5>
			    
			    <form>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbFuncionario" id="rbFuncionario" value="1">
		  				<label class="form-check-label" for="inlineRadio1">Funcionário</label>
					</div>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbPaciente" id="rbFuncionario" value="2">
		  				<label class="form-check-label" for="inlineRadio2">Paciente</label>
					</div>
					<p>
			  	</form>
			  	 
			  	<input type="text" placeholder="Nome" name="nome" id="nome" class="form-control">
				<p>
				<p>
			  	<input type="text" placeholder="Login" name="login" id="login" class="form-control">
			  	<p>
			  	<input type="text" placeholder="Nome de Usuario" name="nomeusuario" id="nomeusuario" class="form-control">
			  	<p>
			  	<input type="password" placeholder="Senha" name="senha" id="senha" class="form-control">
			  	<p>
			  	<input type="password" placeholder="Confirmar Senha" name="csenha" id="csenha" class="form-control">
			  
			  </div>
			</div>	
			
		
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>