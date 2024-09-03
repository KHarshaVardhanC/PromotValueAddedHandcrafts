<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Name: </h4><br>
<input type="text" name="name" required >

<% String name=request.getParameter("name");
response.setContentType("text/html");
PrintWriter pw=response.getWriter();
pw.println("Name is "+name);

%>
</body>
</html>