<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coleta de Lixo</title>
<link rel="stylesheet" href="estilo.css">
</head>
<body>
	
	 <main>
	 	
	 	<h1>  CONTROLE PARA COLETA DE LIXO  </h1>
	 	<div class="conteudo">
	 		<form action="validacao.jsp">
	 			<h3 style="margin: 5px; text-transform: uppercase;">Insira os dados</h3>
	 			<label>Rua:</label>
	 			<input placeholder="ex: Rua João Alfredo" name="rua">
	 			<label>Número:</label>
	 			<input placeholder="ex: 231" name="numero">
	 			<label>Capacidade:</label>
	 			<input placeholder="em KG ex: 25" name="capacidade">
	 			<label>Finalidade:</label>
	 			<input placeholder="ex: Seco" name="finalidade" >
	 			<button type="submit">CADASTRAR</button>
	 			
			</form>
			
			<div class="lista-lixeiras">
				<h1> Lista</h1>				
			</div>
			
			<div class="lista-lixeiras-cadastradas">
				<h1> Lista 2</h1>
			</div>
	 	</div>
	 	
	 	
		
	 
	 </main>
</body>
</html>