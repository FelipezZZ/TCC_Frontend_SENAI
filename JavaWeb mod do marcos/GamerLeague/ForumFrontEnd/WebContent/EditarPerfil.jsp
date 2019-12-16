<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="controller.Mensagem"%>
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
<title>Home</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Css.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

	<%
		String sair = request.getParameter("sair");
		if (sair != null) {
			request.getSession().invalidate();
			request.getSession().setAttribute("usuario", null);
			request.getSession().setAttribute("cod_user", null);
			response.sendRedirect("Login.jsp");
		}	
	%>

	<nav class="navbar navbar-expand-lg navbar-light" id="navbar">
  		<a class="navbar-brand" href="Home.jsp" id="navbrand"><img src="imgs/logo.gif" 
  		class="img-fluid" height="100" width="100" id="logo"></a>
  		
  		<button class="navbar-toggler" type="button" data-toggle="collapse" 
  		data-target="#navItens" aria-controls="navItens" 
  		aria-expanded="false">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		
  		<div class="collapse navbar-collapse" id="navItens">
    		<div class="navbar-nav">
    		
    			<%
    				if (request.getSession().getAttribute("usuario") == null) {
    			%>
    		
      			<a class="nav-item" href="Login.jsp"><button class="btn btn-outline-danger 
      			my-2 my-sm-0" type="button" id="btLogin">Login</button></a>
      			<a class="nav-item" href="Cadastro.jsp"><button class="btn btn-outline-danger 
      			my-2 my-sm-0" type="button">Cadastrar-se</button></a>
      			
      			<%
      				}
      			%>
      			
      			<%
					if (request.getSession().getAttribute("usuario") != null) {
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
							<a class="dropdown-item" href="NovoPost.jsp">Nova Postagem</a> <a
								class="dropdown-item" href="EditarPerfil.jsp">Editar Perfil</a>
							<input type="submit" class="dropdown-item" value="sair" />
						</div>
					</div>
				</form>
				<%
					}
				%>
				
    		</div>
  		</div>
	</nav>
	
			<%
				if (!Mensagem.getMensagens().isEmpty()) {
			%>
			<div class="mensagem" id="mensagem">
				<%
					while (!Mensagem.getMensagens().isEmpty()) {
							out.println(Mensagem.getMensagem());
						}
				%>
				<script>
					setTimeout(() => {
						$("#mensagem").toggle(250);
					}, 4000);
				</script>
			</div>
			<%
				}
			%>	

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>

</script>
</body>
</html>