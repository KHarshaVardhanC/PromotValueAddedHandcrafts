<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
String name=request.getParameter("FirstName");
String email=request.getParameter("Email");
String Text=request.getParameter("query");


response.setContentType("text/html");
PrintWriter pw= response.getWriter();

out.println(name);
if(name == null)
	out.println("Hi");
if(name!=null  && email!=null && Text !=null)
	out.println("You will reply with in 24 hrs");
else
	out.println("Please Fill all the fields");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Preview Your Details</h1>
Name: <%= name %><br>
Email: <%= email %><br>
Query: <%= Text %><br>
</body>
</html>