
<%@page import="com.klef.ep.Services.BuyerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Buyer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<%


InitialContext context=new InitialContext();
BuyerService buyerService =(BuyerService)context.lookup("java:global/JSPFinalProject/BuyerServiceImpl!com.klef.ep.Services.BuyerService");
String email = request.getParameter("email");
String password = request.getParameter("password");

Buyer byr= buyerService.CheckBuyerLogin(email, password);

if(byr!=null)
{   
    //session is implicit object
     session.setAttribute("byr", byr);  // emp is a session variable and emp is an object of type Employee class.
     response.sendRedirect("Buyerhome.jsp"); // will redirect to employee home
}
else
{
    response.sendRedirect("loginfail.jsp");  // will redirect to login failed page
}
%>




