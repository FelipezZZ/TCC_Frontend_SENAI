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
<link rel="stylesheet" href="css/Css.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
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
		String cod_pessoaV = request.getParameter("cod_pessoaV");
		
		if(acao != null){
			String parametros = "acao="+acao+"&cod_pessoaV="+cod_pessoaV;
			
			URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
			
			HttpURLConnection con = (HttpURLConnection) url.openConnection();

			con.setRequestMethod("POST");
			con.setDoOutput(true);
			
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
		}
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-none" id="navBar">
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
	<p>
	<div class="container-fluid" id="">
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<input type="text" id="txtBusca" class="form-control" placeholder="Buscar... " />
			</div>
			<div class="col-2"></div>
		</div>
		<p>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-8">
				<table class="table table-bordered table-hover">
					<thead class="thead-dark">
						<tr>
			      			<th width="20%" scope="col">Cod</th>
			      			<th width="20%" scope="col">Nome</th>
			      			<th width="20%" scope="col">Universidade</th>
			      			<th width="20%" scope="col">RA</th>
			      			<th width="20%" scope="col">Verificar</th>
			    		</tr>
					</thead>
					<tbody id="tbody">
					<%
						String listarPessoas = "kkk";
						
						if (listarPessoas != null) {
							String parametros =	"acao="+"listarNaoVerificados";
								
							URL url = new URL("http://localhost:8080/ProjetoPsicologoBackEnd/ProcessaPessoa");
							
							HttpURLConnection con = (HttpURLConnection) url.openConnection();
							
							con.setRequestMethod("POST");
							con.setDoOutput(true);
							
							DataOutputStream wr = new DataOutputStream(con.getOutputStream());
							wr.writeBytes(parametros);
							
							BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
							
							String linha = "";
							JSONObject obj;
							while ((linha = br.readLine()) != null & linha != "") {
							obj = new JSONObject(linha);
					%>
						<tr>
							<th scope="row"><%=obj.getInt("cod_pessoa") %></th>
							<td><%=obj.getString("nome") %></td>
      						<td><%=obj.getString("universidade") %></td>
      						<td><%=obj.getString("RA") %></td>
      						<td>
      							<form method="post" action="#">
      								<input type="hidden" name="acao" value="verificaPessoa">
      								<input type="hidden" name="cod_pessoaV" value="<%=obj.getInt("cod_pessoa") %>">
      								<center><button type="submit" id="btentrar" class="btn btn btn-primary">verificar</button></center>
      							</form>
      						</td>
						</tr>
					<%
						}
					}
					%>
					</tbody>
				</table>
			</div>
			<div class="col-2"></div>
		</div>	
	</div>
	
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>

		document.getElementById("txtBusca").addEventListener("keyup",function(){
		
		var busca = document.getElementById("txtBusca").value.toLowerCase();
		for(var i = 0; i < tbody.childNodes.length; i++){//Acessa as linhas
			var achou = false;
			var tr = tbody.children[i];
			var td = tr.children;
			for(var j = 0; j < td.length; j++){//Acessa as colunas
				var value = td[1].innerText.toLowerCase();
				if(value.indexOf(busca) >= 0){
					achou = true;
				}
			}
			if(achou){
				tr.style.display = "table-row";
			} else{
				tr.style.display = "none";
			}
		}		
		
	});

</script>
</body>
</html>