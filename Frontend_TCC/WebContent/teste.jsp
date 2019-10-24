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
	  <a class="navbar-brand" href="Home.jsp">Help Chat</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navegação">
	    <span class="navbar-toggler-icon"></span>
	  </button>  
	</nav>
	
	<div id="carouselExampleControls" data-interval="0" class="carousel slide" data-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <div>
	      	<p>
	      	<h3>Pergunta 1</h3>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <div>
	      	<p>
	      	<h3>Pergunta 2</h3>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <div>
	      	<p>
	      	<h3>Pergunta 3</h3>
	      </div>
	    </div>
	  </div>
	  <!--  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Anterior</span>
	  </a> -->
	  <!-- <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Próximo</span>
	  </a> -->
	 </div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>