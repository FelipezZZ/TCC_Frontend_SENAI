<%@page import="org.json.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
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
<title>ADMINISTRADOR</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/CssFelipe.css">
</head>
<body>

	<%
	
		String sair = request.getParameter("sair");
		if (sair != null) {
			request.getSession().invalidate();
			request.getSession().setAttribute("email", null);
			response.sendRedirect("Administrador.jsp");
		}

		String acao = request.getParameter("acao");
	
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String csenha = request.getParameter("csenha");
		
		if(acao != null){
			String parametros;
			
			
			if(acao.equals("cadastrarADM") && !senha.equals("") && senha.equals(csenha) && !login.equals("")){
				System.out.println("ovo cadastra");
				
				parametros = "login=" + login + "&senha=" + senha + "&acao=" + acao;
				
				URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
				
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				
				con.setRequestMethod("POST");
				con.setDoOutput(true);
				
				DataOutputStream wr = new DataOutputStream(con.getOutputStream());
				wr.writeBytes(parametros);

				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				request.getSession().setAttribute("logado", "adm");
				response.sendRedirect("Verificacao.jsp");
			}
			
			if(acao.equals("loginADM") && !senha.equals("") && !login.equals("")){
				System.out.println("ovo loga");
			
				parametros = "login=" + login + "&senha=" + senha + "&acao=" + acao;
				
				URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
				
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				
				con.setRequestMethod("POST");
				con.setDoOutput(true);
				
				DataOutputStream wr = new DataOutputStream(con.getOutputStream());
				wr.writeBytes(parametros);

				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				
				String apnd = "", linha = "";

				while ((linha = br.readLine()) != null)
					apnd += linha;

				JSONObject obj = new JSONObject(apnd);
				
				if(obj.getString("msg").equals("logou")){
					request.getSession().setAttribute("logado", "adm");
					response.sendRedirect("Verificacao.jsp");
				}
			}
			
				
		}
		
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
		<h1></h1>
		
		<%
			if (request.getSession().getAttribute("logado") != null) {
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
							<input type="submit" class="dropdown-item" value="sair" />
						</div>
					</div>
				</form>			
			
			<%
				}
			%>
		
	</nav>

	<div class="card" style="width: 30rem; margin: auto; margin-top: 4%; padding:4%" id="card">
		<div class="container" id="containerTeste">
			  <div class="row">
			  	<div class="main">
			  		<center>
			  		<h3><a href="#" data-toggle="modal" style="color: #6bbfb6" data-target="#ModalCadastro">Cadastro</a> </h3>
			  		</center>
			  		
			  		<div class="login-or">
	        			<hr class="hr-or">
      				</div>
			  		
			  		<form method="post" action="#">
			  			<input type="hidden" name="acao" value="loginADM">
			  		
			  			<div class="form-group">
			  				<label for="inputUsernameEmail">Login :</label>
         	 				<input type="text" name="login" class="form-control "placeholder="Digite seu login.." id="inputUsernameEmail">
			  			</div>
			  			
			  			<div class="form-group">
          					<label for="inputPassword">Senha :</label>
          					<input type="password" name="senha" class="form-control" placeholder="Digite sua senha.."  id="inputPassword">
        				</div>
        				
        				<button type="submit" id="btentrar" class="btn btn btn-primary">Entrar</button>
			  		</form>
			  	</div>
			  </div>
		</div>
	</div>
	
	<!-- MODAL CADASTRO -->
	<div class="modal fade" id="ModalCadastro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" style="margin: auto; margin-top: 9%">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<center>
					<form method="post" action="#">
					
					<input type="hidden" name="acao" value="cadastrarADM">
						
					<div style="width:70%">
						<input type="text" name="login" class="form-control" placeholder="Digite seu login.." />
       					<p>
       					<p>
       					<input type="password" name="senha" class="form-control" placeholder="Digite sua Senha.." />
       					<p>
       					<input type="password" name="csenha" class="form-control" placeholder="Confirme Sua Senha.." />
       					<p> 					
					</div>
						 
					<button type="submit" id="btentrar" class="btn btn btn-primary" height="300" width="300">Cadastre-se</button>	 
						 					
					</form>
					</center>
				</div>
			</div>
		</div>
	</div>	
	
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>