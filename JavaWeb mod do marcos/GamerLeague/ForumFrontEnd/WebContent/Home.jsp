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
	
	<div class="container-fluid" id="divBtsJogos">
		<div class="row">
			<div class="col-4" id="col">
					<div class="card border-danger mb-3" class="card" id="cards">
						<center>
							<form method="post" action="#">
							<input type="hidden" name="cod_jogo" value="1">
							<button type="submit" class="btn-default">
							<img class="card-img-top" src="imgs/lol-logo.png" id="lol-logo">
							</button>
							</form>
						</center>
					</div>	
			</div>

			<div class="col-4" id="col">
					<div class="card border-danger mb-3" class="card" id="cards">
						<center>
							<form method="post" action="#">
							<input type="hidden" name="cod_jogo" value="2">
							<button type="submit" class="btn-default">
							<img class="card-img-top" src="imgs/ygo-logo.png" id="ygo-logo">
							</button>
							</form>
						</center>
					</div>
			</div>

			<div class="col-4" id="col">
					
					<div class="card border-danger mb-3" class="card" id="cards">
						<center>
							<form method="post" action="#">
							<input type="hidden" name="cod_jogo" value="3">
							<button type="submit" class="btn-default">
							<img class="card-img-top" src="imgs/mine-logo.png" id="mine-logo">
							</button>
							</form>
						</center>
					</div>
			</div>
		</div>
	</div>	
	
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

	<div class="container-fluid" id="divPosts">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<div class="container" id="divTabela">
					<table class="table" id="tabelePosts">
						<tbody>
							<%
								String a = "kkk";
							
								if (a != null) {
									String parametros =	"acao="+"carregarTodosPosts";
									
									URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaPosts");
									
									HttpURLConnection con = (HttpURLConnection) url.openConnection();
									
									con.setRequestMethod("POST");
									con.setDoOutput(true);
									
									DataOutputStream wr = new DataOutputStream(con.getOutputStream());
									wr.writeBytes(parametros);
									
									BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
									
									String cod_jogo = request.getParameter("cod_jogo");
									
									if(cod_jogo == null){
										cod_jogo = "0";
									}
									
									String linha = "";
									JSONObject obj;
									while ((linha = br.readLine()) != null) {
									obj = new JSONObject(linha);
									
									if(obj.getInt("cod_jogo") == Integer.valueOf(cod_jogo)){
							%>
							<tr>
								<form method="post" action="PostComentario.jsp">
									
									<input type="hidden" name="cod_post" value="<%=obj.getInt("cod_post")%>">
									
									<div class="card" id="cPosts">
									<div class="card-header" id="cH">
										<label><%=obj.getString("nome_autor")%></label>
										<label style="margin-left: 40%;;"><%=obj.getString("titulo")%></label>
										<%if(obj.getInt("cod_jogo") == 1){ %>
										<label><img class="card-img-top" src="imgs/lol-logo.png" id="imgCardPost"></label>
										<%} %>
										<%if(obj.getInt("cod_jogo") == 2){ %>
										<label><img class="card-img-top" src="imgs/ygo-logo.png" id="imgCardPost"></label>
										<%} %>
										<%if(obj.getInt("cod_jogo") == 3){ %>
										<label><img class="card-img-top" src="imgs/mine-logo.png" id="imgCardPost"></label>
										<%} %>																				
									</div>
									<div class="card-body"><%=obj.getString("conteudo")%></div>
									<div class="card-footer" id="cF"><%=obj.getString("data_post")%>
									<input type="submit" style="margin-left: 75%;" class="btn btn-danger" value="Comentar"/>
									</div>
									</div>
									
								</form>
							</tr>
							<%
									}else if(cod_jogo == "0"){
							%>
							<tr>
								<form method="post" action="PostComentario.jsp">
									
									<input type="hidden" name="cod_post" value="<%=obj.getInt("cod_post")%>">
									
									<div class="card" id="cPosts">
									<div class="card-header" id="cH">
										<label><%=obj.getString("nome_autor")%></label>
										<label style="margin-left: 40%;;"><%=obj.getString("titulo")%></label>
										<%if(obj.getInt("cod_jogo") == 1){ %>
										<label><img class="card-img-top" src="imgs/lol-logo.png" id="imgCardPost"></label>
										<%} %>
										<%if(obj.getInt("cod_jogo") == 2){ %>
										<label><img class="card-img-top" src="imgs/ygo-logo.png" id="imgCardPost"></label>
										<%} %>
										<%if(obj.getInt("cod_jogo") == 3){ %>
										<label><img class="card-img-top" src="imgs/mine-logo.png" id="imgCardPost"></label>
										<%} %>	
									</div>
									<div class="card-body"><%=obj.getString("conteudo")%></div>
									<div class="card-footer" id="cF"><%=obj.getString("data_post")%>
									<input type="submit" style="margin-left: 78%;" class="btn btn-danger" value="Comentar"/>
									</div>
									</div>
								</form>
							</tr>							
							<%			
									}
								}
							}
							%>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-2"></div>
	</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>

</script>
</body>
</html>