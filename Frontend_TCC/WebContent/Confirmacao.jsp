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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/Css.css">
</head>
<body>

	<form method="post" action="Confirmacao.jsp" class="form form-inline">
		<input type="text" id="txtBusca" class="form-control" name="nome" />
		<button type="submit" class="btn btn-warning ml-2">Buscar Clientes</button>
	</form>

	<div class="container" style="width: 100%" id="divTabelaVerificar">
	
		<table class="table table-bordered table-striped table-dark table-sm table-hover">
			<thead>
				<tr>
			 		<th width="25%" scope="col">Cod User</th>
			      	<th width="25%" scope="col">Nick</th>
			      	<th width="25%" scope="col">Nome</th>
			      	<th width="25%" scope="col">Verificar</th>
			    </tr>
			</thead>
			<tbody>
				<tr>
			    	<th scope="row">1</th>
			      	<td>KK</td>
			      	<td>kk</td>
			      	<td><button type="submit" class="btn btn-danger">Verificar</button></td>
			    </tr>
			    <tr>
			    	<th scope="row">2</th>
			      	<td>ll</td>
			      	<td>ll</td>
			      	<td><button type="submit" class="btn btn-danger">Verificar</button></td>
			    </tr>
				<tr>
			    	<th scope="row">3</th>
			      	<td>jj</td>
			      	<td>jj</td>
			      	<td><button type="submit" class="btn btn-danger">Verificar</button></td>
			    </tr>			    
			</tbody>    				
		</table>
	
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="jquery.js"></script>
    
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