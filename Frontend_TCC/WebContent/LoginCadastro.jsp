<%@page import="java.net.URL"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login&Cadastro</title>
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
	
		String tipoperfil = request.getParameter("rbTipoperfil");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String csenha = request.getParameter("csenha");
		String sexo = request.getParameter("sexo");
		
		String universidade = request.getParameter("universidade");
		String RA = request.getParameter("RA");
		
		String acao = request.getParameter("acao");
		
		if(acao != null){
			
			String parametros;
			
			if(acao.equals("loginWeb")){
				parametros = "email=" + email + "&senha=" + senha + "&acao=" + acao;
				
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
				obj.put("email", apnd);
				
				if(obj.getString("email").equals("null")){
					System.out.println("num logo");
				}else if (obj.getString("email") != null){
					if(obj.getString("email").equals("adm")){
						System.out.println(obj.getString("email"));
						request.getSession().setAttribute("email",obj.get("email".toString()) );
						response.sendRedirect("Verificacao.jsp");
					}else{
						System.out.println(obj.getString("email"));
						request.getSession().setAttribute("email",obj.get("email".toString()) );
						response.sendRedirect("Home.jsp");
					}
				}
			}else if(tipoperfil.equals("1") && senha != "" && senha.equals(csenha) && !universidade.equals("0")){
				parametros = "tipoPerf=" + tipoperfil + "&nome=" + nome + "&email=" + email + "&senha=" + senha + "&sexo=" + sexo + "&universidade=" + universidade + "&RA=" + RA
						+ "&acao=" + acao + "&cadastroFB=" + "false";	
				
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
			}else if(tipoperfil.equals("2") && senha != "" && senha.equals(csenha)){
				parametros = "tipoPerf=" + tipoperfil + "&nome=" + nome + "&email=" + email + "&senha=" + senha + "&sexo=" + sexo + "&universidade=" + universidade + "&RA=" + RA
						+ "&acao=" + acao + "&cadastroFB=" + "false";	
				
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
			}
		}
		
		
/*		System.out.println(acao);
		
		System.out.println(tipoperfil);
		System.out.println(nome);
		System.out.println(email);
		System.out.println(senha);
		System.out.println(csenha);
		System.out.println(sexo);
		
		System.out.println(universidade);
		System.out.println(RA);*/
		
	%>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
		<a class="navbar-brand" href="Home.jsp">
			<img src="imgs/Logo.png" class="img-fluid" height="75" width="75" id="logo">
  		</a>
	
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Alterna navega��o">
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
	
	<!-- MODAL INFO -->
	<div class="modal fade" id="ModalInfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalScrollableTitle">Como Funciona</h5>
				</div>
				<div class="modal-body">
				FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- LOGIN -->
	<div class="card" style="width: 30rem; margin: auto; margin-top: 4%; padding:4%" id="card">
		<div class="container" id="containerTeste">
			  <div class="row">
			  	<div class="main">
			  		<center>
			  		<h3>Entre, ou <a href="#" data-toggle="modal" style="color: #6bbfb6" data-target="#ModalCadastro">Cadastre-se </a> </h3>
			  		</center>
			  		
			  		<div class="login-or">
	        			<hr class="hr-or">
      				</div>
			  		
			  		<form method="post" action="#">
			  			<input type="hidden" name="acao" value="loginWeb">
			  		
			  			<div class="form-group">
			  				<label for="inputUsernameEmail">Email :</label>
         	 				<input type="text" name="email" class="form-control "placeholder="Digite seu email.." id="inputUsernameEmail">
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
				<div class="modal-header">
					<h5 class="modal-title"><img src="imgs/Logo.png" class="img-fluid" height="75" width="75" id="logo" />Cadastro</h5>
				</div>
				<div class="modal-body">
					<center>
					<form method="post" action="#">
						<input type="hidden" name="acao" value="cadastrarPessoa">
						
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbEstagiario" value="1">
		  				<label class="form-check-label" for="inlineRadio1">Estagi�rio</label>
					</div>
					<div class="form-check form-check-inline">
		  				<input class="form-check-input" type="radio" name="rbTipoperfil" id="rbPaciente" value="2">
		  				<label class="form-check-label" for="inlineRadio2">Paciente</label>
					</div>	
					<p>
					
					<div style="width:70%">
						<input type="text" name="nome" class="form-control" placeholder="Digite seu nome.." />
       					<p>
       					<p>
						<input type="text" name="email" class="form-control" placeholder="Digite seu email.." />
       					<p>
       					<input type="password" name="senha" class="form-control" placeholder="Digite sua Senha.." />
       					<p>
       					<input type="password" name="csenha" class="form-control" placeholder="Confirme Sua Senha.." />
       					<p>
       					<div class="input-group mb-3">
	       					<div class="input-group-prepend">
	    						<label class="input-group-text" for="inputGroupSexo">Sexo :</label>
	  						</div>
	  						<select class="custom-select" id="inputGroupSexo" name="sexo">
	    						<option value="1">Masculino</option>
	    						<option value="2">Feminino</option>
	  						</select>    
  						</div>   					
					</div>
					
					<div style="width:70%" id="divEstagiario">
       					<div class="input-group mb-3">
	       					<div class="input-group-prepend">
	    						<label class="input-group-text" for="inputGroupUniversidade">Universidade :</label>
	  						</div>
	  						<select class="custom-select" id="inputGroupSexo" name="universidade">
	  							<option value="0">Universidades</option>
	    						<option value="1">Universidade 1</option>
	    						<option value="2">Universidade 2</option>
	  						</select>    
  						</div>   					
						<input type="text" name="RA" class="form-control" placeholder="Digite seu RA.." />
       					<p>
       					<p>
					</div>
						 
					<button type="submit" class="btn btn-outline-primary-dark" height="300" width="300">Cadastre-se</button>	 
						 					
					</form>
					</center>
				</div>
			</div>
		</div>
	</div>
	
	<!-- FOOTER -->
	<div class="footer">
		<div style="text-align: center; margin: 2px 50;">
        	<img src="imgs/Logo.png" style="width: 3%">
    	</div>
    	<p>
    	<div class="footerLinks">
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/howitworks">Como Funciona</a></span>
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/serviceoptions">Servi�os</a></span>
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/serviceoptions">Certificado</a></span>
    	</div>
    	<p>
    	<div class="footerLinks">
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/aboutluxe">Sobre N�s</a></span>
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/faq">FAQ</a></span>
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/contactluxe">Nos Contate</a></span>
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/privacypolicy">Politica de Privacidade</a></span>
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/termsofuse">Termos de Uso</a></span>
   		</div>
   		
   		<div style="padding-top:20px">
	        <ul class="list-inline" style="text-align: center;">
	            <li class="social-icons"><a href="https://pt-br.facebook.com/">
	        <span class="fa-stack fa-s icon-facebook">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-facebook fa-stack-1x"></i>
	        </span>
	            </a></li>
	            <li class="social-icons"><a href="https://accounts.google.com/signin/v2/identifier?passive=1209600&continue=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&followup=https%3A%2F%2Faboutme.google.com%2Fu%2F0%2F%3Freferer%3Dgplus&flowName=GlifWebSignIn&flowEntry=ServiceLogin">
	        <span class="fa-stack fa-s icon-gplus">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-google-plus fa-stack-1x"></i>
	        </span>
	            </a></li>
	            <li class="social-icons"><a href="https://twitter.com/login?lang=pt">
	        <span class="fa-stack fa-s icon-twitter">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-twitter fa-stack-1x"></i>
	        </span>
	            </a></li>
	
	            <li class="social-icons"><a href="https://br.linkedin.com/">
	        <span class="fa-stack fa-s icon-linkedin">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-linkedin fa-stack-1x"></i>
	        </span>
	            </a></li>
	            <li class="social-icons"><a href="https://www.instagram.com/?hl=pt-br">
	        <span class="fa-stack fa-s icon-instagram">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-instagram fa-stack-1x"></i>
	        </span>
	            </a></li>
	            <li class="social-icons"><a href="https://www.flickr.com/">
	        <span class="fa-stack fa-s icon-flickr">
	          <i class="fa fa-square fa-stack-2x"></i>
	          <i class="fa fa-flickr fa-stack-1x"></i>
	        </span>
	            </a></li>
	        </ul>
    	</div>
	</div>
	
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
		var btEstagi = document.querySelector("#rbEstagiario");
		var btPaci = document.querySelector("#rbPaciente");
		
		document.getElementById('divEstagiario').style.display="none";
		
		btEstagi.addEventListener('click', ()=>{
			document.getElementById('divEstagiario').style.display="block";
		});
		
		btPaci.addEventListener('click', ()=>{
			document.getElementById('divEstagiario').style.display="none";
		});
    </script>
</body>
</html>