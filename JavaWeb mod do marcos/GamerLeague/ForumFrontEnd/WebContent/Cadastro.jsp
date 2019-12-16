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
<title>Cadastro</title>
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

		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String csenha = request.getParameter("csenha");
		String genero = request.getParameter("genero");
		String discord = request.getParameter("discord");

		String acao = request.getParameter("acao");

		if (acao != null) {

			String parametros = "nome=" + nome + "&login=" + login + "&senha=" + senha + "&csenha=" + csenha
					+ "&acao=" + acao + "&genero=" + genero + "&discord=" + discord;

			URL url = new URL("http://localhost:8080/ForumBackEnd/ProcessaUsuario");

			HttpURLConnection con = (HttpURLConnection) url.openConnection();

			con.setRequestMethod("POST");
			con.setDoOutput(true);

			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);

			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String apnd = "", linha = "";

			while ((linha = br.readLine()) != null)
				apnd += linha;

			JSONObject obj = new JSONObject();
			obj.put("status", apnd);

			if (obj.getString("status").contains("Preencha todos os campos")) {
				Mensagem.addMensagem("Preencha todos os campos");
			} else if (obj.getString("status").contains("Senhas diferentes")) {
				Mensagem.addMensagem("Senhas diferentes");
			} else if (obj.getString("status").contains("Usuario cadastrado com sucesso")) {
				Mensagem.addMensagem("Usuario cadastrado com sucesso");
				response.sendRedirect("Home.jsp");
				return;
			} else if (obj.getString("status").contains("Erro interno")) {
				Mensagem.addMensagem("Erro interno");
			} else if (obj.getString("status").contains("Esse login ja esta sendo usado")) {
				Mensagem.addMensagem("Esse login ja esta sendo usado");
			}

		}
	%>

	<nav class="navbar navbar-expand-lg navbar-light" id="navbar">
		<a class="navbar-brand" href="Home.jsp" id="navbrand"><img
			src="imgs/logo.gif" class="img-fluid" height="100" width="100"
			id="logo"></a>

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

				<a class="nav-item" href="Login.jsp"><button
						class="btn btn-outline-danger 
      			my-2 my-sm-0"
						type="button" id="btLogin">Login</button></a> <a class="nav-item"
					href="Cadastro.jsp"><button
						class="btn btn-outline-danger 
      			my-2 my-sm-0"
						type="button">Cadastrar-se</button></a>

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

	<div class="container" style="width: 800px" id="divFormCadastro">
		<h3 style="text-align: center">Cadastre-se</h3>
		<br>
		<form method="post" action="#">

			<input type="hidden" name="acao" value="cadastrar"> <input
				type="text" placeholder="Nome" name="nome" id="nome"
				class="form-control"> <br> <input type="text"
				placeholder="Login" name="login" id="loginl" class="form-control">
			<br> <input type="text"
				placeholder="Discord (opcional)" name="discord"
				id="discord" class="form-control">

			<!--<small id="emailHelp" class="form-text text-muted">Nós nunca compartilharemos esse e-mail com ninguém.</small>
				
				<br>
				
				<input type="text" placeholder="Telefone" name="telefone" id="tel" class="form-control">-->
			<br> <input type="password" placeholder="Senha" name="senha"
				id="senha" class="form-control"> <br> <input
				type="password" placeholder="Confirmar Senha" name="senha"
				id="csenha" class="form-control"> <small id="emailHelp"
				class="form-text text-muted">Nunca compartilhe sua senha com ninguém.</small> <br>
			<div class="inline-row">
				<div class="radio">
					<label><input type="radio" name="optradio" checked>Option
						1</label>
				</div>

				<br>
				<div class="radio">
					<label><input type="radio" name="optradio">Option 2</label>
				</div>

			</div>

			<br>




			<!--<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1">
					<label class="form-check-label" for="exampleCheck1">Concordo com os Termos de Licença.</label>
				</div>-->

			<button type="submit" id="salvar" class="btn btn-danger">Salvar</button>

			<a class="btn btn-outline-secondary" role="button" href="Login.jsp"
				aria-pressed="true">Clique aqui se possuir uma conta...</a>

		</form>
	</div>


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>

</script>
</body>
</html>