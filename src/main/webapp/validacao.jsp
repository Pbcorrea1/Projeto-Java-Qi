<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	  
	<%
	
	String rua = request.getParameter("rua");
	String numero = request.getParameter("numero");
	String capacidade = request.getParameter("capacidade");
	String finalidade = request.getParameter("finalidade");
	
	out.print("<h1>Rua: " + rua + "</h1>");
	out.print("<h1>Número: " + numero + "</h1>");
	out.print("<h1> Capacidade: " + capacidade + "kg</h1>");
	out.print("<h1> Finalidade: " + finalidade+ "</h1>");
	
	
	
	
	%>
</body>
</html>