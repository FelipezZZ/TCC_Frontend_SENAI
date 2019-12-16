<%@page import="java.io.InputStreamReader"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Anamneses</title>
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
							<a class="dropdown-item" href="Anamneses.jsp">Anamneses</a> 
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

		<center>
			<a href="DASS21.jsp"><button type="button" id="btentrar" class="btn btn btn-primary" height="300" width="300" style="margin: auto; margin-top: 2%">Nova Anamnese</button></a>
		</center>	 
		

		<%
			if(request.getSession().getAttribute("cod_pessoa") != null){
				String parametros =	"cod_pessoa="+ request.getSession().getAttribute("cod_pessoa").toString() +
						"&acao="+"listarAnamneses";
				
				URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
			
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
	
				con.setRequestMethod("POST");
				con.setDoOutput(true);
			
				DataOutputStream wr = new DataOutputStream(con.getOutputStream());
				wr.writeBytes(parametros);
			
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		
				String linha = "";
				JSONObject obj;
				
				String a = "", d ="", s="";
				while ((linha = br.readLine()) != null) {	
				obj = new JSONObject(linha);
				int ia = obj.getInt("a"), id = obj.getInt("d"), is = obj.getInt("s");
				
				if(obj.getInt("a") < 8){
					a = "Normal";
				}else if(ia > 7 && ia < 10){
					a = "Suave";
				}else if(ia > 9 && ia < 15){
					a = "Moderada";
				}else if(ia > 14 && ia < 20){
					a = "Grave";
				}else if(ia > 19){
					a = "Extremamente Grave";
				}
				
				if(obj.getInt("d") < 10){
					d = "Normal";
				}else if(id > 9 && id < 14){
					d = "Suave";
				}else if(id > 13 && id < 21){
					d = "Moderada";
				}else if(id > 20 && id < 28){
					d = "Grave";
				}else if(id > 27){
					d = "Extremamente Grave";
				}
				
				if(obj.getInt("s") < 15){
					s = "Normal";
				}else if(is > 14 && is < 19){
					s = "Suave";
				}else if(is > 18 && is < 26){
					s = "Moderada";
				}else if(is > 25 && is < 34){
					s = "Grave";
				}else if(is > 33){
					s = "Extremamente Grave";
				}
				
				JSONObject obj2 = new JSONObject(linha);
				obj2.put("a", a);
				obj2.put("d", d);
				obj2.put("s", s);
		%>

		<div class="card" style="width: 50rem; margin: auto; margin-top: 2%">
			  <div class="card-header">
			    <center><%=obj.getString("dataAnamnese") %></center>
			  </div>
			  <ul class="list-group list-group-flush">
			    <li class="list-group-item">Ansiedade: <%=obj2.getString("a") %></li>
			    <li class="list-group-item">Depressão: <%=obj2.getString("d") %></li>
			    <li class="list-group-item">Stress: <%=obj2.getString("s") %></li>
			  </ul>
		</div>
		<% 
				}
			}
		%>
		

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>