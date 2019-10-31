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
	
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		String acao = request.getParameter("acao");
		
		if(acao != null){
			String parametros = "login=" + login + "&senha=" + senha + "&acao=" + acao;
			
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
	
			<div class="card" style="width: 20rem; margin: auto; margin-top: 10% ">
			  <div class="card-body">
			  	<center>
			    	<h5 class="card-title">Login</h5>
			  	</center>
			  	
				<form method="post" action="#">
					
					<input type="hidden" name="acao" value="logarPessoa">
				
					<input type="text" name="login" class="form-control" placeholder="Digite seu usuário.." />
					<br> 
					<input type="password" name="senha" class="form-control" placeholder="Digite sua senha.." />
					<br> 
					<input class="btn btn-lightblue" type="submit" value="Entrar" />
					<input class="btn btn-outline-info" type="button" value="Cadastre-se" data-toggle="modal" data-target="#exampleModalLong"/>
					<div>
					<img src="imgs/logarfb.png" class="img-fluid" height="30" width="30" margin id="logarfb">
					</div>
					<!-- Modal -->
					
	<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" style="margin: auto; margin-top: 9%" >
  	<div class="modal-dialog" role="document">
    	<div class="modal-content">
      	<div class="modal-header">
        	<h5 class="modal-title" id="exampleModalLongTitle"><img src="imgs/Logo.png" 
  		class="img-fluid" height="75" width="75" id="logo"></a> Bem-vindo(a) ao Projeto </h5>
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          			<span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <center>  <form>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbFuncionario" value="1">
		  				<label class="form-check-label" for="inlineRadio1">Funcionario</label>
					</div>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbPaciente" value="2">
		  				<label class="form-check-label" for="inlineRadio2">Paciente</label>
					</div>
					<p>
			  	</form> </center>
	<center><div style="width:70%">	  	
       <input type="text" name="login" class="form-control" placeholder="Digite seu usuário.." />
       <p>
       <p>
       <input type="text" name="Senha" class="form-control" placeholder="Digite sua Senha.." />
       <p>
       <input type="text" name="Csenha" class="form-control" placeholder="Confirme Sua Senha.." />
       <p>
       <input type="text" name="Email" class="form-control" placeholder="Digite seu Email.." />
       <p>
      <div class="input-group mb-3">
  <div class="input-group-prepend">
    <label class="input-group-text" for="inputGroupSelect01">Sexo :</label>
  </div>
  <select class="custom-select" id="inputGroupSelect01">
    <option selected>Não Informar...</option>
    <option value="1">Masculino</option>
    <option value="2">Feminino</option>
    

  </select>
</div>
</div></center>

<center><button type="button" class="btn btn-outline-primary-dark" height="300" width="300">Cadastre-se</button></center>
<p>
<center> Ou </center>
<p>
<center>
<div>
<img src="imgs/logar.png" 
  		class="img-fluid" height="300" width="300" id="logo2">
	</div>
	</center>
<p>
<center>
<div>
<img src="imgs/logargoogle.png" 
  		class="img-fluid" height="300" width="300" id="logo3">
	</div>
	</center>	

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Voltar</button>
      </div>
    </div>
  </div>
</div>
			  </div>
			</div>
			</form>
	
				</form>			  	
			  
			  </div>
			</div>	
	
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>