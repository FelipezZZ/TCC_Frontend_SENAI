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

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
	  <a class="navbar-brand" href="Home.jsp"><img src="imgs/Logo.png" 
  		class="img-fluid" height="75" width="75" id="logo"></a>
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
      				<button class="btn btn-success my-2 my-sm-0" type="button">BAIXAR</button>      		
      				
      					      			
	    		</a>
	    	</ul>
	    </form>
	  </div>  
	</nav>
	<center>
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner teste">
    <div class="carousel-item active">
      <img src="imgs/po.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="imgs/pi.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
 <img src="imgs/Pesquisas.png" class="d-block w-100" alt="...">    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	</center>
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>