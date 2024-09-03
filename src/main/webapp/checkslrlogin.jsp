
<%@page import="com.klef.ep.Services.SellerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"     pageEncoding="ISO-8859-1"%>
<%


InitialContext context=new InitialContext();
SellerService sellerService =(SellerService)context.lookup("java:global/JSPFinalProject/SellerServiceImpl!com.klef.ep.Services.SellerService");
String email = request.getParameter("email");
String password = request.getParameter("password");

Seller slr= sellerService.CheckSellerLogin(email, password);

if(slr!=null)
{   
    //session is implicit object
     session.setAttribute("slr", slr);  // emp is a session variable and emp is an object of type Employee class.
     response.sendRedirect("Sellerhome.jsp"); // will redirect to employee home
}
else
{
    response.sendRedirect("loginfail.jsp");  // will redirect to login failed page
}
%>