<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.net.URL"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/Css.css">
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
	  <a class="navbar-brand" href="Home.jsp"><img src="imgs/Logo.png" 
  		class="img-fluid" height="75" width="75" id="logo"></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Alterna navegação">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
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
       				<a class="nav-link" href="Login.jsp">ENTRAR</a>
      			</a>
      			<a class="nav-item" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR">
      				<div>
		<button type="submit" class="btStore" id="btPlay"></button>
	</div>     		
      				
      					      			
	    		</a>
	    	</ul>
	    </form>
	  </div>  
	</nav>
	<div class="container">
  	
  	

    <div class="row" style="background-color: #68ceee; height: 60px;"></div>
    <div class="row" style="margin-left:10%">

        <div class="col-md-5  promo-border" style="margin-top:60px;">
            <div class="promo-text"><img src="imgs/Logo.png" 
  		class="img-fluid" height="" width="60" id="logo"></div>
            <p style="font-family: calibri;
  font-size: 20px;
  margin-top: 25px;">
                Como nosso Sistema funciona ?
            </p>

            <p style="  font-family: calibri;
  font-size: 14px;
 padding: 10px;">Nosso aplicativo funciona como base para que estudantes de Psicologia, possam praticar, fazendo consultas grátis para pessoas necessitadas, com isso também os Estudantes podem abater seu tempo de Estágio</p>
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
  
  padding: 10px;">Estudantes a partir do 4° termo da faculdade de psicologia, com seus documentos e matricula confirmada.
  Como paciente : Qualquer pessoa que necessitar de ajuda, podendo até mesmo ser anônima. Caso contrário é necessario apenas realizar o Cadastro em nosso APP e aprovitar do nosso sistema seja na Web como no <button type="Button" href="https://play.google.com/store/apps/details?id=com.dts.freefireth&hl=pt_BR" class="btn btn-link">APP disponivel na PlayStore</button></p>
        </div>

    </div>


</div>


<div class="row">
    <div class="join-class">
        <span style="font-size: 40px;">Junte-se a Nós!</span>
    <span style="font-size: 14px;">  Em Busca de um mundo mais saudável
   
   
       <button type="submit"  href="#"  data-toggle="modal" data-target="#ModalCadastrar" class="btn btn-default btn-m round">Cadastre-se</button>
  
   	</span>
					
	<div class="modal fade" id="ModalCadastrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true" style="margin: auto; margin-top: 9%" >
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
      
   
  <!--  	<center>	
<div>
		<button type="button" class="btAvatar" id="btAvatar"  width="300"></button>
	</div>
	</center>-->
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
       <input type="password" name="Senha" class="form-control" placeholder="Digite sua Senha.." />
       <p>
       <input type="password" name="Csenha" class="form-control" placeholder="Confirme Sua Senha.." />
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
		<button type="submit" class="btMedia" id="btFacebook"  width="300"></button>
	</div>
	</center>
<p>
<center>
<div>
		<button type="submit" class="btMedia" id="btGoogle" width="300"></button>
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



                </div>
            </div>
        </div>
    </div>
</div>
<div class="row" style="background-color: #68ceee; height: 60px;"></div>
<div class="row" style="background-image: url('http://lcc.dotcmscloud.com/images/NewHome3.png');">
    <p style="font-family: Calibri; font-size: 27px;text-align: center; padding-top: 50px;padding-bottom: 30px;">O que nossos usuarios dizem?</p>

    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-3 ">
            <div class="comment-box">
                <p>"App magnifico, me sinto muito melhor agora, aquele moderador Caio é um Gato"</p>
            </div>
            </div>
            <div class="commnetor">
                <p>Suzane Von Richthofen</p>
                
            </div>
        </div>

        <div class="col-md-3">
            <div class="comment-box">
                <p>"Aenean dapibus facilisis urna lacinia bibendum. Maeceans sit amet lacinia dui. Donec vitae egestas
                    ipsum, sit amet egestas nulla. Maecenas consectetur est ac ipsum porta tincidunt."</p>

            </div>
            <div class="commnetor">
                <p>Jim Doe</p>
                
            </div>
        </div>


        <div class="col-md-3 ">
            <div class="comment-box">
                <p>"Aenean dapibus facilisis urna lacinia bibendum. Maeceans sit amet lacinia dui. Donec vitae egestas
                    ipsum, sit amet egestas nulla. Maecenas consectetur est ac ipsum porta tincidunt."</p>
            </div>
            <div class="commnetor">
                <p>Jahn Doe</p>
     
            </div>
            
        </div>


    </div>
</div>
<div class="row" style="background-color: #68ceee; height: 60px;"></div>
<div class="footer">

    <div class="footerLinks">
        <span class="footer-title"><a href="#/howitworks">Como Funciona</a></span>
        <span class="footer-title"><a href="#/serviceoptions">Serviços</a></span>
        <span class="footer-title"><a>Certificado</a></span>
        <span class="footer-title"><a href="#/luxevault"></a></span>
        
    </div>

    <div class="footerLinks">
        <span class="footer-title"><a href="#/aboutluxe">Sobre Nós</a></span>
        <span class="footer-title"><a href="#/faq">FAQ</a></span>
        <span class="footer-title"><a href="#/contactluxe">Nos Contate</a></span>
        <span class="footer-title"><a href="#/privacypolicy">Politica de Privacidade</a></span>
        <span class="footer-title"><a href="#/termsofuse">Termos de Uso</a></span>
    </div>
    <div style="padding-top:5px">
        <ul class="list-inline" style="text-align: center;">
            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-facebook">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-facebook fa-stack-1x"></i>
        </span>
            </a></li>
            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-gplus">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-google-plus fa-stack-1x"></i>
        </span>
            </a></li>
            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-twitter">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-twitter fa-stack-1x"></i>
        </span>
            </a></li>

            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-linkedin">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-linkedin fa-stack-1x"></i>
        </span>
            </a></li>
            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-instagram">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-instagram fa-stack-1x"></i>
        </span>
            </a></li>
            <li class="social-icons"><a href="#">
        <span class="fa-stack fa-s icon-flickr">
          <i class="fa fa-square fa-stack-2x"></i>
          <i class="fa fa-flickr fa-stack-1x"></i>
        </span>
            </a></li>
        </ul>
    </div>
    <div style="text-align: center; margin: 10px 0;">
        <img src="http://lcc.dotcmscloud.com/images/luxe.png" style="width: 6%">
    </div>
    
</div>
</div>


</div>

	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>