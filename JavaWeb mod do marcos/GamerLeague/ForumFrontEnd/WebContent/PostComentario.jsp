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
<title>Comentarios</title>
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
		
		String acao = request.getParameter("acao");
		String cod_post = request.getParameter("cod_post");
		
		String cod_autor = "0";
		
		if(request.getSession().getAttribute("cod_user") != null){
			cod_autor = request.getSession().getAttribute("cod_user").toString();
		}
		
		String conteudo = request.getParameter("conteudoComentario");
		
		String cod_comentarioC = request.getParameter("cod_comentarioC");
		String conteudoResposta = request.getParameter("conteudoResposta");
		
		if(acao != null){
			String parametros =	"cod_post="+cod_post+"&acao="+acao+"&conteudo="+conteudo+"&cod_autor="+cod_autor
					+"&conteudoResposta="+conteudoResposta+"&cod_comentarioC="+cod_comentarioC;
			
			URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaPosts");
			
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
			
			if(obj.getString("status").contains("Preencha o campo conteudo")){
				Mensagem.addMensagem("Preencha o campo conteudo");	
			}else if (obj.getString("status").contains("Comentario realizado com sucesso")){
				Mensagem.addMensagem("Comentario realizado com sucesso");
			}else if (obj.getString("status").contains("Falha ao comentar")){
				Mensagem.addMensagem("Falha ao comentar");
			}else if (obj.getString("status").contains("Efetue login para fazer comentario")){
				Mensagem.addMensagem("Efetue login para fazer comentario");
			}else if (obj.getString("status").contains("Efetue login para responder comentario")){
				Mensagem.addMensagem("Efetue login para responder comentario");
			}else if (obj.getString("status").contains("Resposta realizada com sucesso")){
				Mensagem.addMensagem("Resposta realizada com sucesso");
			}else if (obj.getString("status").contains("Falha ao responder")){
				Mensagem.addMensagem("Falha ao responder");
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

	<div class="container-fluid" id="">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
					<%
						if(cod_post != null){
							String parametros =	"cod_post="+cod_post+"&acao="+"carregarPost";
						
							URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaPosts");
						
							HttpURLConnection con = (HttpURLConnection) url.openConnection();
				
							con.setRequestMethod("POST");
							con.setDoOutput(true);
						
							DataOutputStream wr = new DataOutputStream(con.getOutputStream());
							wr.writeBytes(parametros);
						
							BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
					
							String linha = "";
							JSONObject obj;
							while ((linha = br.readLine()) != null) {
							obj = new JSONObject(linha);
					%>
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
									</div>
									</div>						
					<%
							}
						}		
					%>	
					
					<form method="post" action="#" style="margin-bottom: 2%">
						<input type="hidden" name="cod_post" value="<%=request.getParameter("cod_post")%>">
						
						<input type="hidden" name="acao" value="comentar">
						<textarea rows="4" name="conteudoComentario" class="form-control" placeholder="Comentario..."
									style="resize: none" maxlength="300"></textarea>
									
						<input class="btn btn-danger" style="margin-left: 88%;" type="submit" value="COMENTAR" />						
					</form>	
					
					<%
						if(cod_post != null){
							String parametros =	"cod_post="+cod_post+"&acao="+"carregarComentarios";
							
							//System.out.println(parametros);
						
							URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaPosts");
						
							HttpURLConnection con = (HttpURLConnection) url.openConnection();
				
							con.setRequestMethod("POST");
							con.setDoOutput(true);
						
							DataOutputStream wr = new DataOutputStream(con.getOutputStream());
							wr.writeBytes(parametros);
						
							BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
							String linha = "";
							JSONObject obj;
							while ((linha = br.readLine()) != null) {
							obj = new JSONObject(linha);
					%>
							<div class="card" id="cComentario">
							<div class="card-header" id="cH">
								<label><%=obj.getString("nome_autor")%></label>
							</div>
							<div class="card-body"><%=obj.getString("conteudoC")%></div>
							<form method="post" action="#">	
							<div class="card-footer" id="cF">
								<%=obj.getString("data_comentarioC")%>
					
									<input type="hidden" name="mostrar" value="mostrar">
									
									<input type="hidden" name="cod_comentario" value="<%=obj.getInt("cod_comentarioC")%>">
									
									<input type="hidden" name="cod_post" value="<%=cod_post%>">
									
									<input class="btn btn-danger" style="margin-left: 70%;" type="submit" value="RESPONDER" />
								</form>
								
								<%
									String mostrar = request.getParameter("mostrar");
								
									String cod_comentario = request.getParameter("cod_comentario");
								
									if(mostrar != null && obj.getInt("cod_comentarioC") == Integer.valueOf(cod_comentario)){
								%>
								
									<div id="divFormResposta">
										<form method="post" action="#" style="margin-bottom: 2%;margin-top: 2%;" id="formResposta">
											<input type="hidden" name="cod_post" value="<%=cod_post%>">
												
											<input type="hidden" name="cod_comentarioC" value="<%=obj.getInt("cod_comentarioC") %>">
												
											<input type="hidden" name="acao" value="responder">
												
											<textarea rows="4" name="conteudoResposta" class="form-control"  placeholder="Resposta..."
													style="resize: none" maxlength="300"></textarea>
											<input class="btn btn-outline-danger" type="submit" value="Responder" />				
										</form>
									</div>	
									
								<%
									}
								%>	
																
							</div>
							</div>	
					<%		
							}
						}
					%>					
												
			</div>
			<div class="col-2"></div>
		</div>
	</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>

</script>
</body>
</html>