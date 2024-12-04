<%@page import="controller.LixeirasDAO"%>
<%@page import="model.Lixeira"%>
<%


	String rua = request.getParameter("rua");
    String numero = request.getParameter("numero");
    String capacidade = request.getParameter("capacidade");
    String finalidade = request.getParameter("finalidade");

 	Lixeira lixeira = new Lixeira();
 	LixeirasDAO dao = new LixeirasDAO(); 
 	lixeira.setRua(rua);
 	lixeira.setNumero(numero);
 	lixeira.setCapacidade(capacidade);
 	lixeira.setFinalidade(finalidade);
	dao.inserir(lixeira);
%>