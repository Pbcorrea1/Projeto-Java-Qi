<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import = "controller.LixeirasDAO" %>
	<%
		LixeirasDAO dao = new LixeirasDAO();
	try{
		dao.deletar(request.getParameter("rua"), request.getParameter("numero"));
		response.sendRedirect("index.jsp");
	}catch(Exception errordeletar){
		out.println("Erro ao deletar "+errordeletar);
	}
	%>
</body>
</html>