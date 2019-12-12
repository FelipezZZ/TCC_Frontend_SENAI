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
<title>Home</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/Css.css">
</head>
<body>

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
	</nav>	<center>
	
	
	
	<div class="card" style="width: 80rem; margin: auto; margin-top: 2%; padding:5%">
	<div class="container">
  	
  	

   <!--  <div class="row" style="background-color: #6bbfb6; height: 60px;"></div>--> 
    <div class="row" style="margin-left:10%">

        <div class="col-md-5  promo-border" style="margin-top:60px;">
            <div class="promo-text"><img src="imgs/Logo.png" 
  		class="img-fluid" height="" width="60" id="logo"></div>
            <p style="font-family: calibri;
   font-size: 20px;
  margin-top: 30px;">
                Como nosso Sistema funciona ?
            </p>

                <p style=" font-family: calibri;
  font-size: 17px;
   
  
 padding: 10px;">Nosso aplicativo funciona como base para que estudantes de Psicologia, possam praticar, fazendo consultas grátis para pessoas necessitadas, com isso também os Estudantes podem abater seu tempo de Estágio.</p>
        </div>
        <div class="col-md-1 "></div>
       <div class="col-md-5  promo-border" style="margin-top:60px;">
            <div class="promo-text"><img src="imgs/Logo.png" 
  		class="img-fluid" height="" width="60" id="logo"></div>
            <p style="font-family: calibri;
  font-size: 20px;
  margin-top: 25px;">
                E quem Pode Utilizar?
            </p>

            <p style=" font-family: calibri;
  font-size: 17px;
  
  padding: 10px;">Estudantes a partir do 4° termo da faculdade de psicologia, com seus documentos e matricula confirmada podem utilizar do nosso sistema.
  <P>
  Como paciente : Qualquer pessoa que necessitar de ajuda, podendo até mesmo ser anônimamente. Caso contrário é necessario apenas realizar o Cadastro em nosso APP e aprovitar do nosso sistema seja na Web como no APP disponivel na PlayStore:
  <a class="nav-item" href=https://warface.uol.com.br/o-jogo/download>
  <p>
      				<button class="btn my-2 my-sm-0" type="button"  id="btBaixar">Baixar Já</button>   
      				  <img src="imgs/iconBaixar.png" style="width: 10%">  			      			
	    		</a>
  
        </div>
</div>
    </div>


</div>
<p>
<div class="row" style="background-color: #6bbfb6; margin-top:80px; height: 60px;"></div>
<div class="footer">
    <div style="text-align: center; margin: 2px 50;">
        <img src="imgs/Logo.png" style="width: 3%">
        
    </div>
    <p>
<div class="footerLinks">
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/howitworks">Como Funciona</a></span>
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/serviceoptions">Serviços</a></span>
        	<span class="footer-title"><a style="color: #6bbfb6" href="#/serviceoptions">Certificado</a></span>
    	</div>
    	<p>
    	<div class="footerLinks">
	        <span class="footer-title"><a style="color: #6bbfb6" href="#/aboutluxe">Sobre Nós</a></span>
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
	</center>
	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>