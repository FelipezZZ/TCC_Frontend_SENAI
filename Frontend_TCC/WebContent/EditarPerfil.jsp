<%@page import="java.io.InputStreamReader"%>
<%@page import="org.json.JSONObject"%>
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
<title>Editar Perfil</title>
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
		
		String acao = request.getParameter("acao");
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String csenha = request.getParameter("csenha");
		
		String universidade = request.getParameter("universidade");
		String RA = request.getParameter("RA");
		String descricao = request.getParameter("descricao");
		
		String cod_pessoa = "0";
		
		if(request.getSession().getAttribute("cod_pessoa") != null){
			cod_pessoa = request.getSession().getAttribute("cod_pessoa").toString();
			System.out.println("codzada: " + cod_pessoa);
		}
		
		//System.out.println("nome " + nome);
		//System.out.println("email " + email);
		//System.out.println("senha " + senha);
		//System.out.println("csenha " + csenha);
		//System.out.println("univer " + universidade);
		//System.out.println("RA " + RA);
		
		String parametros;
		
		if(acao != null){
		
			if(acao.equals("editarPerfil")){
				
				if(!nome.equals("") && !email.equals("")){
					parametros = "acao=" + "editarNomeEmailWeb" + "&nome=" + nome + "&email=" + email 
							+ "&cod_pessoa="  + cod_pessoa;
					
					URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					
					con.setRequestMethod("POST");
					con.setDoOutput(true);
					
					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.writeBytes(parametros);

					BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
				}
				
				if(!senha.equals("") && senha.equals(csenha)){
					System.out.println("senha braba");
					
					parametros = "acao=" + "editarSenhaWeb" + "&senha=" + senha
							+ "&cod_pessoa="  + cod_pessoa;
					
					URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					
					con.setRequestMethod("POST");
					con.setDoOutput(true);
					
					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.writeBytes(parametros);

					BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));					
				}
			}
			
			if(acao.equals("editarPerfilEstagiario")){
				
				if(!universidade.equals("0")){
					
					parametros = "acao=" + "editarUniversidadeWeb" + "&universidade=" + universidade
							+ "&cod_pessoa="  + cod_pessoa;
					
					URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					
					con.setRequestMethod("POST");
					con.setDoOutput(true);
					
					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.writeBytes(parametros);

					BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));	
					
				}
				
				if(!RA.equals("")){
					
					parametros = "acao=" + "editarRAWeb" + "&RA=" + RA
							+ "&cod_pessoa="  + cod_pessoa;
					
					URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					
					con.setRequestMethod("POST");
					con.setDoOutput(true);
					
					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.writeBytes(parametros);

					BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));	
					
				}
				
				if(!descricao.equals("")){
					
					parametros = "acao=" + "editarDescricaoWeb" + "&descricao=" + descricao
							+ "&cod_pessoa="  + cod_pessoa;
					
					URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
					
					HttpURLConnection con = (HttpURLConnection) url.openConnection();
					
					con.setRequestMethod("POST");
					con.setDoOutput(true);
					
					DataOutputStream wr = new DataOutputStream(con.getOutputStream());
					wr.writeBytes(parametros);

					BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));	
					
				}
				
			}
			
		}
		
	%>

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
	
	<p>
	
			<!-- NAVS EDITAR PERFIL -->
	<div class="container bootstrap snippet">
		<div class="row">
			<div class="col-sm-9">
			
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" id="perfil-tab" data-toggle="tab" href="#perfil" role="tab" aria-controls="perfil" aria-selected="true">
							Perfil
						</a>
					</li>
					
                  	<%
      					if(request.getSession().getAttribute("tipoPerf") != null){
                  		if(request.getSession().getAttribute("tipoPerf").toString().equals("1")){
                      				
                      	System.out.println("tipoPerf " + request.getSession().getAttribute("tipoPerf"));
                      				
                  	%>					
					
					<li class="nav-item">
						<a class="nav-link" id="DadosEstagi-tab" data-toggle="tab" href="#dadosestagi" role="tab" aria-controls="dadosestagi" aria-selected="true">
							Dados Estagiário
						</a>
					</li>
					
					<%
                  		}
      					}
					%>
					
				</ul>
				
				<%
				
					if(request.getSession().getAttribute("tipoPerf") != null){
					//System.out.println("jsp cod pessoa: " + request.getSession().getAttribute("cod_pessoa").toString());
				
					parametros = "acao=" + "pegarPessoa" + "&cod_pessoa=" + request.getSession().getAttribute("cod_pessoa").toString();
				
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
				
				%>
				
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="perfil" role="tabpanel" aria-labelledby="perfil-tab">
						<hr>
						<form class="form" action="#" method="post">
							
							<input type="hidden" name="acao" value="editarPerfil">
						
							<div class="form-group">
                       			<div class="col-xs-6">
                              		<label for="nome"><h4>Nome</h4></label>
                              		<input type="text" value="<%=obj.get("nome") %>" class="form-control" name="nome" id="nome" placeholder="">
                          		</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Email</h4></label>
                              		<input type="text" value="<%=obj.get("email") %>" class="form-control" name="email" id="email" placeholder="">
                         	 	</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Senha</h4></label>
                              		<input type="password" class="form-control" name="senha" id="senha" placeholder="Nova Senha">
                         	 	</div>
                      		</div>
                      		
                      		<div class="form-group">
                            	<div class="col-xs-6">
                            		<label for="last_name"><h4>Confirmar Senha</h4></label>
                              		<input type="password" class="form-control" name="csenha" id="csenha" placeholder="Nova Senha">
                         	 	</div>
                      		</div>
                     
                      		<div class="form-group">
	                           <div class="col-xs-12">
	                                <br>
	                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>Salvar</button>
	                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>Cancelar</button>
	                            </div>
                      		</div>
                      		
						</form>
					</div>
				 	
				 	<div class="tab-pane fade" id="dadosestagi" role="tabpanel" aria-labelledby="hd-tab">
				 		<hr>
						<form class="form" action="#" method="post">
						
							<input type="hidden" name="acao" value="editarPerfilEstagiario">
						
					 		<div class="form-group">
	                       		<div class="col-xs-6">
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
	                       		</div>
	                      	</div>
	                      		
	                      	<div class="form-group">
	                            <div class="col-xs-6">
	                            	<label for="RA"><h4>RA</h4></label>
	                              	<input type="text" value="<%=obj.get("RA") %>" class="form-control" name="RA" id="RA" placeholder="">
	                         	</div>
	                      	</div>	
                      	
                      		<div class="form-group">
	                       		<div class="col-xs-6">
	                       			<label for="last_name"><h4>Descrição</h4></label>
	                       			<textarea rows="4" name="descricao" class="form-control"  placeholder=""
											style="resize: none" maxlength="200"></textarea>    
	                       		</div>
	                       	</div>	
	                       	
                      	  	<div class="form-group">
	                           <div class="col-xs-12">
	                                <br>
	                              	<button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i>Salvar</button>
	                               	<button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i>Cancelar</button>
	                            </div>
                      		</div>
                      	
                      	</form>
				 	</div>
				</div>
				
				<%
					}
                %>
				
			</div>
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>