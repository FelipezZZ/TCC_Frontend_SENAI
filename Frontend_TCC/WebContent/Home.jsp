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
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navega��o">
	    <span class="navbar-toggler-icon"></span>
	  </button>
  <a class="navbar-brand" href="teste4.jsp"><img src="imgs/Logo.png" 
  		class="img-fluid" height="75" width="75" id="logo"></a>
	
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    </ul>
	    
	    <form class="form-inline my-2 my-lg-0">

			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    			    		<!-- Button trigger modal -->
<button type="button" class="btn btn-link" data-toggle="modal" data-target="#exampleModalScrollable">
  COMO FUNCIONA
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.

Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).


Where does it come from?
Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.

The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.

Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
      			<a class="nav-item">
       				<a class="nav-link" href="Login.jsp" id="navItem">ENTRAR</a>
      			</a>
      		
      			
      			<a class="nav-item" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR">
      				<button class="btn my-2 my-sm-0" type="button" id="btBaixar">BAIXAR</button>      			      			
	    		</a>
	    	</ul>
	    </form>
	    
	    
	  </div>
	</nav>	<center>
	
	<div class="card" style="width: 80rem; margin: auto; margin-top: 2%; padding:5%">
	<div class="container">
  	
  	

    <div class="row" style="background-color: #68ceee; height: 60px;"></div>
    <div class="row" style="margin-left:10%">

        <div class="col-md-5  promo-border" style="margin-top:60px;">
            <div class="promo-text"><img src="imgs/Logo.png" 
  		class="img-fluid" height="" width="60" id="logo"></div>
            <p style="font-family: calibri;
  
  margin-top: 30px;">
                Como nosso Sistema funciona ?
            </p>

                <p style=" font-family: calibri;
  font-size: 14px;
   
  
 padding: 10px;">Nosso aplicativo funciona como base para que estudantes de Psicologia, possam praticar, fazendo consultas gr�tis para pessoas necessitadas, com isso tamb�m os Estudantes podem abater seu tempo de Est�gio</p>
        </div>
        <div class="col-md-1 "></div>
        <div class="col-md-5 promo-border" style="margin-top:60px;">
            <div class="promo-text"><img src="imgs/interogacao.png"></div>
            <p style="font-family: calibri;
  font-size: 20px;
  margin-top: 25px;">
                E quem Pode Utilizar?
            </p>

            <p style=" font-family: calibri;
  font-size: 14px;
  
  padding: 10px;">Estudantes a partir do 4� termo da faculdade de psicologia, com seus documentos e matricula confirmada.
  Como paciente : Qualquer pessoa que necessitar de ajuda, podendo at� mesmo ser an�nima. Caso contr�rio � necessario apenas realizar o Cadastro em nosso APP e aprovitar do nosso sistema seja na Web como no APP disponivel na PlayStore:
  <a class="nav-item" href="https://play.google.com/store?hl=pt_BR">
      				<button class="btn my-2 my-sm-0" type="button" id="btBaixar">Baixar J�</button>      			      			
	    		</a>
  
        </div>
</div>
    </div>


</div>

<div class="row" style="background-color: #68ceee; margin-top:80px; height: 60px;"></div>
<div class="footer">
    <div style="text-align: center; margin: 2px 50;">
        <img src="imgs/Logo.png" style="width: 3%">
    </div>
    <p>
    <div class="footerLinks">
        <span class="footer-title"><a href="#/howitworks">Como Funciona</a></span>
        <span class="footer-title"><a href="#/serviceoptions">Servi�os</a></span>
        <span class="footer-title"><a href="#/serviceoptions">Certificado</a></span>
        
        
    </div>
<p>
    <div class="footerLinks">
        <span class="footer-title"><a href="#/aboutluxe">Sobre N�s</a></span>
        <span class="footer-title"><a href="#/faq">FAQ</a></span>
        <span class="footer-title"><a href="#/contactluxe">Nos Contate</a></span>
        <span class="footer-title"><a href="#/privacypolicy">Politica de Privacidade</a></span>
        <span class="footer-title"><a href="#/termsofuse">Termos de Uso</a></span>
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