<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>**************************************************</h1>
	<img src="adminpage.jfif">
	
<h1>**************************************************</h1>	
<br>
	<%@ include file="header.jsp"%>
<br>
<br>
	<%
		session = request.getSession(false);
	if (session.getAttribute("uname") != null) {
		
		out.println("Session Id : " + session.getId());
		out.println("<br /><br />");
		out.println("Session Creation Date : " + new Date(session.getCreationTime()));
		out.println("<br /><br />");
		out.println("Welcome " + session.getAttribute("uname") + "!!");
		
	} else {
		response.sendRedirect("login.jsp");
	}
	%>


</body>
</html>