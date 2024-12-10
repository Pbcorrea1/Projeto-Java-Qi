
<%@page import="java.util.ArrayList"%>
<%@page import="controller.LixeirasDAO"%>
<%@page import="model.Lixeira"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"    %>
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
	 		<form action="validacao.jsp" method="post">
	 			<h3 style="margin: 5px; text-transform: uppercase;">Insira os dados</h3>
	 			<label>Rua:</label>
	 			<input style="" type="text" placeholder="ex: Rua João Alfredo" name="rua" >
	 			<label>Número:</label>
	 			<input type="text" placeholder="ex: 231" name="numero" >
	 			<label>Capacidade:</label>
	 			<input type="text" placeholder="em KG ex: 25" name="capacidade">
	 			<label>Finalidade:</label>
	 			<input type="text" placeholder="ex: Seco" name="finalidade" >
	 			<button type="submit">CADASTRAR</button>
	 			
			</form>
			
			<div class="lista-lixeiras">
				<table border="1">
					<thead>
					   <tr>
					   	 <th>ID	</th>
					     <th>Rua</th>
					     <th>Número</th>
					     <th>Capacidade</th>
					     <th>Finalidade</th>
					   </tr>
					 </thead>
					 <tbody>
				
			<%  Lixeira lixeira = new Lixeira();
				LixeirasDAO dao = new LixeirasDAO();
				
				ArrayList<Lixeira> listar = dao.getLista();
				
				for(int num = 0; num < listar.size(); num++){
					out.println("<tr>");
					out.println("<td>"+listar.get(num).getId()+"</td>");
					out.println("<td>"+listar.get(num).getRua()+"</td>");
					out.println("<td>"+listar.get(num).getNumero()+"</td>");
					out.println("<td>"+listar.get(num).getCapacidade()+"</td>");
					out.println("<td>"+listar.get(num).getFinalidade()+"</td>");
					out.println("<td style='border: none;'><a style='text-decoration: none; color: black;' href='update.jsp?id="+listar.get(num).getId()+"&rua="+listar.get(num).getRua()+"&numero="+listar.get(num).getNumero()+"&capacidade="+listar.get(num).getCapacidade()+"&finalidade="+listar.get(num).getFinalidade()+"'>Edit</a></td>");
					out.println("</tr>");
				}
				
					%>
					 </tbody>
				</table>
				
			</div> 
			

			<form action="deletar.jsp" method = "post" style="justify-content: space-between;">
				<h3 style="margin: 5px; text-transform: uppercase;">Excluir Lixeira</h3>
				<label>Rua</label> <br>
				<input type ="text" placeholder="Insira a rua" name="rua" value ?= "<%=request.getParameter("rua") %>"> <br>
				<label>Numero</label> <br>
				<input type = "text" placeholder="Insira o numero" name="numero" value ?= "<%=request.getParameter("numero")%>"> <br>
				<button type = "submit">Deletar</button>
			</form>
			
	 	</div>
	 	
	 	
		
	 
	 </main>
</body>
</html>