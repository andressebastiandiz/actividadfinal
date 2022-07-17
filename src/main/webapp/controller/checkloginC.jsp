<%@page import="dao.UsuarioDAOC"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String usu = request.getParameter("inputEmail");
		String pass = request.getParameter("inputPassword");
		
		out.println(usu);
		out.println(pass);
		
		UsuarioDAOC dao = new UsuarioDAOC();
		Boolean valido = dao.validarUsuYPass(usu, pass);
		
		if(valido.booleanValue()) {
			response.sendRedirect("../view/inicio.html");
		} else {
			response.sendRedirect("../view/loginError.html");
			out.println("<p style='color:red'>Usuario o password incorrectos</p>");
		}
	
		
	%>

</body>
</html>