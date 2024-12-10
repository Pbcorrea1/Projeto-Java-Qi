<%@page import="controller.LixeirasDAO"%>
<%@page import="model.Lixeira"%>
<%
	String id = request.getParameter("id");
	String rua = request.getParameter("rua");
	String numero = request.getParameter("numero");
	String capacidade = request.getParameter("capacidade");
	String finalidade = request.getParameter("finalidade");
	
	if(rua != null && rua != "" && numero != null && numero != "" && capacidade != null && capacidade != "" && finalidade != null && finalidade != ""){
		Lixeira lixeira = new Lixeira();
		LixeirasDAO dao = new LixeirasDAO();
		lixeira.setRua(rua);
		lixeira.setNumero(numero);
		lixeira.setCapacidade(capacidade);
		lixeira.setFinalidade(finalidade);
		lixeira.setId(Integer.parseInt(id));
		dao.atualizar(lixeira);
		response.sendRedirect("index.jsp");
		
	}else{
		response.sendRedirect("update.jsp");
	}

%>