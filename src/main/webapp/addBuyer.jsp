<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.klef.ep.Services.BuyerService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Buyer"%>
    
    
<%

InitialContext context=new InitialContext();
BuyerService buyerService=(BuyerService)context.lookup("java:global/JSPFinalProject/BuyerServiceImpl!com.klef.ep.Services.BuyerService");


String email=request.getParameter("email");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String city=request.getParameter("city");
String designation=request.getParameter("designation");
String state=request.getParameter("state");
String pin=request.getParameter("pincode");
int pincode=Integer.parseInt(pin);
String password=request.getParameter("password");
String rpassword=request.getParameter("rpassword");
String contactno=request.getParameter("contactno");

Buyer byr=new Buyer();

byr.setEmail(email);
byr.setFirstname(firstname);
byr.setLastname(lastname);
byr.setGender(gender);
byr.setDob(dob);
byr.setCity(city);
byr.setDesignation(designation);
byr.setState(state);
byr.setPincode(pincode);
byr.setPassword(password);
byr.setRpassword(rpassword);
byr.setContactno(contactno);

buyerService.addBuyer(byr);

response.sendRedirect("addbyrsuccess.jsp");

%>