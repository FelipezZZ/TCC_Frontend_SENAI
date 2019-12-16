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
<title>Novo Post</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Css.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

	<%
		String sair = request.getParameter("sair");
		if (sair != null) {
			response.sendRedirect("Login.jsp");	
		}
		
		String conteudo = request.getParameter("conteudo");
		String titulo = request.getParameter("titulo");
		String cod_jogo = request.getParameter("jogo");
		String usuario = request.getSession().getAttribute("usuario").toString();
		String cod_user = request.getSession().getAttribute("cod_user").toString();
		
		String acao = request.getParameter("acao");
		
		if(acao != null){
			
			String parametros =	"titulo="+titulo+"&conteudo="+conteudo+"&usuario="+usuario+"&cod_user="+cod_user+"&cod_jogo="+cod_jogo+"&acao="+acao;
			
			URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaUsuario");
			
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			
			con.setRequestMethod("POST");
			con.setDoOutput(true);
			
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
			String apnd = "", linha = "";
			
			while((linha = br.readLine())!= null) apnd += linha;
			
			JSONObject obj = new JSONObject();
			obj.put("status", apnd);
			
			if(obj.getString("status").contains("Post feito com sucesso")){
				Mensagem.addMensagem("Post feito com sucessos");	
			}else if (obj.getString("status").contains("Falha ao fazer post")){
				Mensagem.addMensagem("Falha ao fazer post");
			}else if (obj.getString("status").contains("Preencha todos os campos")){
				Mensagem.addMensagem("Preencha todos os campos");
			}
			
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

	<div class="container" style="width: 800px" id="divFormLogin">
		<h3 style="text-align: center">Nova Postagem</h3>
			<br>
		<form method="post" action="#">
		
			<input type="hidden" name="acao" value="postar">
		
			<center>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="jogo" id="inlineRadio1" value="1">
  				<label class="form-check-label" for="inlineRadio1" id="fcLabel"><img class="card-img-top" src="imgs/lol-logo.png" id="fcLogo"></label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="jogo" id="inlineRadio2" value="2">
  				<label class="form-check-label" for="inlineRadio2" id="fcLabel"><img class="card-img-top" src="imgs/ygo-logo.png" id="fcLogo"></label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="jogo" id="inlineRadio3" value="3">
  				<label class="form-check-label" for="inlineRadio3" id="fcLabel"><img class="card-img-top" src="imgs/mine-logo.png" id="fcLogo"></label>
			</div>
			</center>
							
			<br>
		
			<input type="text" name="titulo" class="form-control" placeholder="Insira um título..." />
			<br> 
			<textarea rows="4" cols="" name="conteudo" class="form-control" placeholder="Conteúdo..."
			style="resize: none" maxlength="300"></textarea>
			<br> 
			<input class="btn btn-danger" type="submit" value="Postar" />
			<a href="Home.jsp"><button class="btn btn-outline-danger" type="button">Cancelar</button></a>
		</form>
	</div>	

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>

</script>
</body>
</html>