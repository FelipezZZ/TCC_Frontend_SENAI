<%@page import="java.util.List"%>
<%@page import="dao.Anamnese"%>
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
	 
	 <div class="card" id="anamnese">
	 <div id="carousel" data-interval="0" class="carousel slide" data-ride="carousel">
	 <div class="carousel-inner">
	  	<%
			Anamnese anm = new Anamnese();
		
			List<String> perguntas = anm.anamnese();
	
  			int i;				
  							
  			for(i = 0; i <= 20; i++){
  				
  				System.out.println(perguntas.get(i));
  				
		%>
	    <div class="carousel-item <% if(i == 0) out.print("active"); %> citem">
	      <div>
	      	<p>
	      	<center>
	      	<h3><%=perguntas.get(i) %></h3>
	      	<div class="form-check form-check-inline">
	      		<input class="form-check-input rbt" type="radio" name="opcao" id="op0" value="opcao0">
  				<label class="form-check-label" for="op0">0</label>
	     	</div>
	     	<div class="form-check form-check-inline">
	      		<input class="form-check-input rbt" type="radio" name="opcao" id="op1" value="opcao1">
  				<label class="form-check-label" for="op1">1</label>
	     	</div>
	      	<div class="form-check form-check-inline">
	      		<input class="form-check-input rbt" type="radio" name="opcao" id="op2" value="opcao2">
  				<label class="form-check-label" for="op2">2</label>
	      	</div>
	      	<div class="form-check form-check-inline">
	      		<input class="form-check-input rbt" type="radio" name="opcao" id="op3" value="opcao3">
  				<label class="form-check-label" for="op3">3</label>
	      	</div>
	      	<input type="hidden" class="tipo" value="<%=i %>"/>
	      	</center>
	      </div>
	    </div>
	    <%	
  			}
	    %>
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

		var tipos = document.querySelectorAll(".tipo");
		console.log(tipos[5]);
    	var check = document.querySelectorAll(".rbt");
    	var btPrev = document.querySelector("#btPrev");
    	var btNext = document.querySelector("#btNext");
		var carousel = document.querySelector("#carousel");
    	var contador = 0;
    	
    	btNext.addEventListener('click', ()=>{
    		contador++;
    	});
    	
    	btPrev.addEventListener('click', ()=>{
    		contador--;
    		if(contador < 0){
    			contador = -1;
    		}
    	});
		
        for(var i = 0; i < check.length; i++){
            check[i].addEventListener('change', liberabtNext);
        }
        
        function liberabtNext(){
            btNext.disabled = false;
        }        
    	
        function travabtNext(){
            btNext.disabled = true;
        }
        
        function liberabtPrev(){
            btPrev.disabled = false;
        }        
    	
        function travabtPrev(){
            btPrev.disabled = true;
        }

        $("#carousel").on('slide.bs.carousel', function (){
			travabtNext();
			if(contador >= 0){
				liberabtPrev();
			}else{
				travaPrev();
			}
         });
        

        
    </script>
</body>
</html>