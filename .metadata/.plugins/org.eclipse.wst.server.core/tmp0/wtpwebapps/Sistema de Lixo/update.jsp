<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="estilo.css">
</head>
<body>
	<div class="conteudo" style="display: flex; justify-content: center;margin: 5px; padding: 5px; height: 90vh;">
			
		<form action="executa-update.jsp" method="post" style="padding: 15px; display: flex;flex; justify-content: center; ">
			<h2>Atualizações de Informações</h2>
			<label>ID</label>
			<input type="number" name="id" value="<%=request.getParameter("id")%>">
			<label>RUA</label>
			<input type="text" name="rua" value="<%=request.getParameter("rua")%>">
			<label>NUMERO</label>
			<input type="text" name="numero" value="<%=request.getParameter("numero")%>">
			<label>CAPACIDADE</label>
			<input type="text" name="capacidade" value="<%=request.getParameter("capacidade")%>">
			<label>FINALIDADE</label>
			<input type="text" name="finalidade" value="<%=request.getParameter("finalidade")%>">
			<button style="border: 2px solid rgba(230,230,230,0.4);">Atualizar</button>
		
		</form>	
		
	</div>

</body>
</html>