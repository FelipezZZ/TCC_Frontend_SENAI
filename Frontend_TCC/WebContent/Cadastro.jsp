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

	<%
		String tipoperfil = request.getParameter("rbTipoperfil");
		String nome = request.getParameter("nome");
		String login = request.getParameter("login");
		String nomeusuario = request.getParameter("nomeusuario");
		String identidade = request.getParameter("identidade");
		String senha = request.getParameter("senha");
		String csenha = request.getParameter("csenha");
		
		String acao = request.getParameter("acao");
		
		if(acao != null){
			String parametros = "tipoPerf=" + tipoperfil + "&nome=" + nome + "&login=" + login + "&nickname=" + nomeusuario + "&identidade" + identidade + "&senha=" + senha + "&csenha=" + csenha
					+ "&acao=" + acao;
			
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

			JSONObject obj = new JSONObject();
			obj.put("status", apnd);			
			
		}
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navegação">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	   <a class="navbar-brand" href="Home.jsp"><img src="imgs/Logo.png" 
  		class="img-fluid" height="75" width="75" id="logo"></a>

	
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    </ul>
	    
	    <form class="form-inline my-2 my-lg-0">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    		<a class="nav-item">
       				<a class="nav-link" href="#" id="navItem">COMO FUNCIONA</a>
      			</a>
      			<a class="nav-item">
       				<a class="nav-link" href="Login.jsp" id="navItem">ENTRAR</a>
      			</a>
      			<a class="nav-item">
       				<a class="nav-link" href="Cadastro.jsp" id="navItem">CADASTRAR-SE</a>
      			</a>
      			<a class="nav-item" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR">
      				<button class="btn my-2 my-sm-0" type="button" id="btBaixar">BAIXAR</button>      			      			
	    		</a>
	    	</ul>
	    </form>
	    
	    
	  </div>
	</nav>
			
			<form method="post" action="#">
			
			<input type="hidden" name="acao" value="cadastrarPessoa">
			
			<div class="card" style="width: 20rem; margin: auto; margin-top: 5%">
			  <div class="card-body">
			  	<center>
			    <h5 class="card-title">Cadastro</h5>
			    
			    <form>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbFuncionario" value="1">
		  				<label class="form-check-label" for="inlineRadio1">Funcionario</label>
					</div>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbPaciente" value="2">
		  				<label class="form-check-label" for="inlineRadio2">Paciente</label>
					</div>
					<p>
			  	</form>
			  	</center>
			  	
			  	<input type="text" placeholder="Nome" name="nome" id="nome" class="form-control">
				<p>
				<p>
			  	<input type="text" placeholder="Login" name="login" id="login" class="form-control">
			  	<p>
			  	<input type="text" placeholder="Nome de Usuario" name="nomeusuario" id="nomeusuario" class="form-control">
			  	<p>
			  	<input type="text" placeholder="Identidade" name="identidade" id="identidade" class="form-control">
			  	<p>
			  	<input type="password" placeholder="Senha" name="senha" id="senha" class="form-control">
			  	<p>
			  	<input type="password" placeholder="Confirmar Senha" name="csenha" id="csenha" class="form-control">
			  	<p>
			  	<input class="btn btn-outline-info" type="button" value="Cadastre-se" data-toggle="modal" data-target="#exampleModalLong"/>
			  	
			  	
	<!-- Modal -->
	
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      	<div class="modal-header">
        	<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
			  </div>
			</div>
			</form>
	
	<div id="footer">
							
		<center>
			<img src="imgs/fb.png">
			<img src="imgs/gmailmini.png">
		</center>
	</div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>