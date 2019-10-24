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
	 
	 <div class="card" style="width: 80%; margin: auto; background-color: Red;">
	 		<div id="carousel" data-interval="0" class="carousel slide" data-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active citem">
	      <div>
	      	<p>
	      	<center>
	      		<h3>1 - Tive dificuldade de me acalmar</h3>
	      		<div class="form-check form-check-inline">
	      			<input class="form-check-input rbt" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="opcao1">
  					<label class="form-check-label" for="inlineRadio1">0</label>
	      		</div>
	      		<div class="form-check form-check-inline">
	      			<input class="form-check-input rbt" type="radio" name="inlineRadioOptions" id="inlineRadio" value="opcao1">
  					<label class="form-check-label" for="inlineRadio1">0</label>
	      		</div>
	      		<div class="form-check form-check-inline">
	      			<input class="form-check-input rbt" type="radio" name="inlineRadioOptions" id="inlineRadio" value="opcao1">
  					<label class="form-check-label" for="inlineRadio1">0</label>
	      		</div>
	      		<div class="form-check form-check-inline">
	      			<input class="form-check-input rbt" type="radio" name="inlineRadioOptions" id="inlineRadio" value="opcao1">
  					<label class="form-check-label" for="inlineRadio1">0</label>
	      		</div>	      			      		
	      	</center>
	      </div>
	    </div>
	    <div class="carousel-item citem">
	      <div>
	      	<p>
	      	<h3>Pergunta 2</h3>
	      </div>
	    </div>
	    <div class="carousel-item citem">
	      <div>
	      	<p>
	      	<h3>Pergunta 3</h3>
	      </div>
	    </div>
	  </div>
	  
	  <button class="carousel-control-prev" href="#carousel" data-slide="prev" id="btPrev" disabled>
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="sr-only">Anterior</span>
	  </a>
	  <button class="carousel-control-next" href="#carousel" data-slide="next" id="btNext" disabled>
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="sr-only">Próximo</span>
	  </a>
	 </div>
	 </div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>

    	var check = document.querySelectorAll(".rbt");
    	var btPrev = document.querySelector("#btPrev");
    	var btNext = document.querySelector("#btNext");
    	var citem = document.querySelector("#citem");
    	
        for(var i = 0; i < check.length; i++){
            check[i].addEventListener('change', liberabt);
        }

        function liberabt(){
            btNext.disabled = false;
            citem.addEventListener('direction', travabt);
        }        
    	
        function travabt(){
            btNext.disabled = true;
        }     
        
    </script>
</body>
</html>