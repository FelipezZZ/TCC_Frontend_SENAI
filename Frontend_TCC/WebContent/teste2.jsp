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
<link rel="stylesheet" href="css/home.css">
<!------ Include the above in your HEAD tag ---------->


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

<div class="row">
    <div class="col-md-12">
        <h2 style="font-family : calibri; text-align: center;">Service Options</h2>
    </div>
    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-3">
            <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-one">
                    <div class="price">
                        <p class="plan-name">Basic</p>
                        <span class="price-text">$</span>299
                    </div>
                    <div class="plan-div">
                        <p class="plan-text">
                            The watch will be analyzed and graded by one of our professional watchmakers. Due to
                            demand,
                            completion of grading currently takes two to three weeks from receipt of the watch.
                        </p>
                    </div>
                    <div class="pricing-footer">

                        <a href="#" class="btn db-button-color-square btn-m round">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-one">
                    <div class="price">
                        <p class="plan-name">Premium</p>
                        <span class="price-text">$</span>379

                    </div>
                    <div class="plan-div">
                        <p class="plan-text">
                            Our premium package includes the services in our Basic Package as well as expedited
                            fulfillment. Each watch is returned via overnight delivery and we guarantee completion
                            of
                            grading within 7 business days from receipt of the watch.
                        </p>
                    </div>
                    <div class="pricing-footer">

                        <a href="#" class="btn db-button-color-square btn-m round">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-one">
                    <div class="price">

                        <p class="plan-name">Luxe</p>
                        <span class="price-text">$</span>499

                    </div>

                    <div class="plan-div">
                        <p class="plan-text">
                            Our Luxe Package includes the services in our Premium Package as well as our Refinishing
                            Service. Each watch is returned via overnight delivery and we guarantee completion of
                            grading and polishing within 7 business days from receipt of the watch.
                        </p>
                    </div>
                    <div class="pricing-footer">

                        <a href="#" class="btn db-button-color-square btn-m round">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="col-md-4"></div>
        <div class="col-md-3">
            <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-one">
                    <div class="price">
                        <p class="plan-name">Finishing</p>
                        <span class="price-text">$</span><span style="font-size: 27px;">149</span>

                    </div>
                    <div class="plan-div">
                        <p class="plan-text">
                            Refinishing : Luxe Certified will refinish a users watch to improve its appearance if
                            necessary. Luxe Certified will repair the movement if necessary. Crystal Replacement :
                            Luxe
                            Certified will repair or replace the crystal if necessary.
                        </p>
                    </div>
                    <div class="pricing-footer">

                        <a href="#" class="btn db-button-color-square btn-m round">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="db-wrapper">
                <div class="db-pricing-eleven db-bk-color-one">
                    <div class="price">
                        <p class="plan-name">Basic</p>
                        <span class="price-text">$</span>799
                    </div>
                    <div class="plan-div">
                        <p class="plan-text">
                            Our Luxe Package includes the services in our Premium Package as well as our Refinishing
                            Service. Each watch is returned via overnight delivery and we guarantee completion of
                            grading and polishing within 7 business days from receipt of the watch.
                        </p>

                    </div>
                    <div class="pricing-footer">

                        <a href="#" class="btn db-button-color-square btn-m round">Select Plan</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row" style="background-color: #68ceee; height: 60px;"></div>
<div class="row" style="background-image: url('http://lcc.dotcmscloud.com/images/NewHome3.png');">
    <p style="font-family: Calibri; font-size: 27px;text-align: center; padding-top: 50px;padding-bottom: 30px;">What
        our customer say?</p>

    <div class="col-md-12">
        <div class="col-md-2"></div>
        <div class="col-md-3 ">
            <div class="comment-box">
                <p>"Aenean dapibus facilisis urna lacinia bibendum. Maeceans sit amet lacinia dui. Donec vitae egestas
                    ipsum, sit amet egestas nulla. Maecenas consectetur est ac ipsum porta tincidunt."</p>
            </div>
            </div>s
            <div class="commnetor">
                <p>John Doe</p>
                <a>Watch Collector</a>
            </div>
        </div>

        <div class="col-md-3">
            <div class="comment-box">
                <p>"Aenean dapibus facilisis urna lacinia bibendum. Maeceans sit amet lacinia dui. Donec vitae egestas
                    ipsum, sit amet egestas nulla. Maecenas consectetur est ac ipsum porta tincidunt."</p>

            </div>
            <div class="commnetor">
                <p>Jim Doe</p>
                <a>Jewelar</a>
            </div>
        </div>


        <div class="col-md-3 ">
            <div class="comment-box">
                <p>"Aenean dapibus facilisis urna lacinia bibendum. Maeceans sit amet lacinia dui. Donec vitae egestas
                    ipsum, sit amet egestas nulla. Maecenas consectetur est ac ipsum porta tincidunt."</p>
            </div>
            <div class="commnetor">
                <p>Jahn Doe</p>
                <a>Watch Collector</a>
            </div>
        </div>


    </div>
</div>
<div class="row" style="background-color: #68ceee; height: 60px;"></div>
<div class="footer">

    <div class="footerLinks">
        <span class="footer-title"><a href="#/howitworks">How It Works</a></span>
        <span class="footer-title"><a href="#/serviceoptions">Service Options</a></span>
        <span class="footer-title"><a>Get Certified</a></span>
        <span class="footer-title"><a href="#/luxevault">Luxe Vault</a></span>
        <span class="footer-title"><a href="#/join">Luxe Network</a></span>
    </div>

    <div class="footerLinks">
        <span class="footer-title"><a href="#/aboutluxe">About Luxe</a></span>
        <span class="footer-title"><a href="#/faq">FAQ</a></span>
        <span class="footer-title"><a href="#/contactluxe">Contact Luxe</a></span>
        <span class="footer-title"><a href="#/privacypolicy">Privacy Policy</a></span>
        <span class="footer-title"><a href="#/termsofuse">Terms Of Use</a></span>
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
    <div style="text-align: center; font-family: Calibri; font-size: 12px;padding: 5px 0">@Luxe Certified Corp.</div>
    <div style="text-align: center; font-family: Calibri; font-size: 11px;">Luxe Certified is not affiliated with
        Rolex
    </div>
</div>
</div>


</div>